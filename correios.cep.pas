unit correios.cep;

interface

uses
  Windows, Classes, correios.service.interfaces, correios.types,
  correios.interfaces;

type
  TCorreiosCep = class(TInterfacedObject, ICorreiosCep)
    protected
     constructor Create;
     function BuscaCep(const cep: string): TDadosCep; overload;
     procedure BuscaCep(const cep: string; var Obj: enderecoERP); overload;
    public
     destructor Destroy; override;
     class function New: ICorreiosCep;

  end;

implementation

{ TCorreiosCep }

constructor TCorreiosCep.Create;
begin
 inherited Create;
end;

destructor TCorreiosCep.Destroy;
begin

  inherited Destroy;
end;

class function TCorreiosCep.New: ICorreiosCep;
begin
 Result := self.Create;
end;

function TCorreiosCep.BuscaCep(const cep: string): TDadosCep;
var
 Obj: enderecoERP;
begin
 self.BuscaCep(cep, Obj);
 Result.Bairro := Obj.bairro;
 Result.Cidade := Obj.cidade;
 Result.cep := Obj.cep;
 Result.Endereco := Obj.end_;
 Result.Complemento := Obj.complemento2;
 Result.UF := Obj.uf;
end;

procedure TCorreiosCep.BuscaCep(const cep: string; var Obj: enderecoERP);
begin
 Obj := GetAtendeCliente.consultaCEP(cep);
end;

end.
