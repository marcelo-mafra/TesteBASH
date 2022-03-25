unit correios.datetime;

interface

uses
  Windows, Classes, XSBuiltIns, correios.service.interfaces,
  correios.interfaces;

type
  TCorreiosDateTime = class(TInterfacedObject, ICorreiosDateTime)
    protected
     constructor Create;
     function GetServerDateTime: TDateTime;
     function GetXSDateTime: TXSDateTime;
    public
     destructor Destroy; override;
     class function New: ICorreiosDateTime;

  end;

implementation

{ TCorreiosDateTime }

constructor TCorreiosDateTime.Create;
begin
 inherited Create;
end;

destructor TCorreiosDateTime.Destroy;
begin

  inherited Destroy;
end;

class function TCorreiosDateTime.New: ICorreiosDateTime;
begin
 Result := self.Create;
end;

function TCorreiosDateTime.GetServerDateTime: TDateTime;
begin
 Result := self.GetXSDateTime.AsDateTime;
end;

function TCorreiosDateTime.GetXSDateTime: TXSDateTime;
begin
 Result := GetAtendeCliente.buscaDataAtual;
end;

end.
