unit WebModuleUnit1;

interface

uses
  System.SysUtils,
  System.Classes,
  Web.HTTPApp;

type
  TWebModule1 = class(TWebModule)
    procedure WebModule1DefaultHandlerAction(Sender: TObject;
      Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
  private
  public
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{$R *.dfm}

procedure TWebModule1.WebModule1DefaultHandlerAction(
  Sender: TObject;
  Request: TWebRequest;
  Response: TWebResponse;
  var Handled: Boolean);
begin
  Response.ContentType := 'text/html; charset=utf-8';

  Response.Content :=
    '<!DOCTYPE html>' +
    '<html>' +
    '<head>' +
    '<meta charset="UTF-8">' +
    '<title>Система заявок</title>' +
    '</head>' +
    '<body>' +

    '<h1>Система учета заявок клиентов</h1>' +

    '<h2>Новая заявка</h2>' +

    '<form method="post">' +

    '<p>Имя клиента:</p>' +
    '<input type="text" name="name">' +

    '<p>Email:</p>' +
    '<input type="email" name="email">' +

    '<p>Текст заявки:</p>' +
    '<textarea name="request"></textarea>' +

    '<br><br>' +

    '<input type="submit" value="Добавить заявку">' +

    '</form>' +

    '<hr>' +

    '<h2>О приложении</h2>' +

    '<p>WEB-приложение разработано на Delphi с использованием архитектуры WebBroker.</p>' +

    '<p>Для размещения приложения используется Microsoft IIS.</p>' +

    '<p>Данные заявок хранятся в базе данных Microsoft SQL Server.</p>' +

    '</body>' +
    '</html>';

  Handled := True;
end;

end.
