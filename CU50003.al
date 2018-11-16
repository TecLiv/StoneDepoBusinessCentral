codeunit 50105 "Container Availability Email"
{

    trigger OnRun()
    begin
        MailSend;
    end;

    var
        SmtpMail: Codeunit "SMTP Mail";
        //ContainerAvailabilityReport: Report "50021";
        FileName: Text;
        FileName2: Text;
        SMTPMailSetup: Record "SMTP Mail Setup";
        SalesReceivablesSetup: Record "Sales & Receivables Setup";

    local procedure MailSend()
    begin
        FileName := '';
        FileName2 := '';
        SMTPMailSetup.GET;
        FileName2 := 'Stock Availability';
        FileName := 'D:\Stonedepo NAV\' + FileName2 + '.xlsx';

        //CLEAR(ContainerAvailabilityReport);
        SalesReceivablesSetup.GET;
        //ContainerAvailabilityReport.SAVEASEXCEL(FileName);

        //SmtpMail.CheckValidEmailAddresses(SalesReceivablesSetup."Stock Availability Email");
        SmtpMail.CreateMessage('Stone Depo', SMTPMailSetup."User ID", 'usrivastava@dynamicssquare.com', 'Stock Availability - ' + FORMAT(TODAY, 0, '<Month Text,3> <Day,2>, <Year4>'), '', TRUE);
        SmtpMail.AppendBody('Dear Team,');
        SmtpMail.AppendBody(FORMAT('<BR>'));
        SmtpMail.AppendBody(FORMAT('<BR>'));
        SmtpMail.AppendBody('Please find attached the Stock Availability for ' + FORMAT(TODAY, 0, '<Month Text,3> <Day,2>, <Year4>') + '.');
        //SmtpMail.AddAttachment(FileName,'Stock Availability - '+ FORMAT(TODAY,0,'<Month Text,3> <Day,2>, <Year4>') + '.xlsx');
        SmtpMail.AppendBody(FORMAT('<BR>'));
        SmtpMail.AppendBody(FORMAT('<BR>'));
        SmtpMail.AppendBody('Thank you!');
        SmtpMail.AppendBody(FORMAT('<BR>'));
        SmtpMail.AppendBody(FORMAT('<BR>'));
        SmtpMail.AppendBody('Regards,');
        SmtpMail.AppendBody(FORMAT('<BR>'));
        SmtpMail.AppendBody('Stone Depo');
        SmtpMail.AppendBody(FORMAT('<HR>'));
        SmtpMail.AppendBody('NOTE: This is system generated mail please do not reply.');
        SmtpMail.Send;
        //ERASE(FileName);
    end;
}

