unit correios.types;

interface

uses
  Windows, Classes;

type
  TDadosCep = record
    Bairro: string;
    cep: string;
    Cidade: string;
    Complemento: string;
    Endereco: string;
    UF: string;
    Tag: integer;
  end;

implementation

end.
