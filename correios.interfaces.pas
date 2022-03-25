unit correios.interfaces;

interface

uses
  Windows, Classes, correios.types, correios.service.interfaces, XSBuiltIns;

type
  ICorreiosCep = interface
    ['{6DD73C20-F7B4-4D5F-8972-C7FDF7BBFD63}']
    function BuscaCep(const cep: string): TDadosCep; overload;
    procedure BuscaCep(const cep: string; var Obj: enderecoERP); overload;
  end;

  ICorreiosDateTime = interface
    ['{6DD73C20-F7B4-4D5F-8972-C7FDF7BBFD63}']
    function GetServerDateTime: TDateTime;
    function GetXSDateTime: TXSDateTime;
  end;

implementation

end.
