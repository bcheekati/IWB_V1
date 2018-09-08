CREATE OR REPLACE EDITIONABLE TRIGGER  "XXIW_IR_ATTACHMENTS_TRG" 
   before insert or update on XXIW_IR_ATTACHMENTS
   for each row
begin
  if :new."IR_ATTACHMENT_ID" is null then
    select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.IR_ATTACHMENT_ID from dual;
  end if;
  if inserting then
    :new.CREATION_DATE := sysdate;
    :new.created_by := -1;
    :new.LAST_UPDATE_DATE := sysdate;
    :new.LAST_UPDATED_BY := -1;
   end if;
  if (inserting or updating) and nvl(dbms_lob.getlength(:new.file_blob),0) > 15728640 then
    raise_application_error(-20000, 'The size of the uploaded file was over 15MB. Please upload a smaller file.');
  end if;
  if inserting or updating then
    :new.LAST_UPDATE_DATE := sysdate;
    :new.LAST_UPDATED_BY := -1;
  end if;  
end;

/
ALTER TRIGGER  "xxiw_ir_attachments_trg" ENABLE
/