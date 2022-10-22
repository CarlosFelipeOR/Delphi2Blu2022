unit UArma;

interface

type
  TArma = class;
    private
    FModelo: String;
    FMarca: String;
    FQuantMunicao: Integer;
    FAutomatica: Boolean;

    public
    procedure AtirarCabeca;
    procedure AtirarCoracao;
    procedure AtirarPerna;
    procedure Coronhada;

    property Modelo:String read getModelo write setModelo;
    property Marca:String read getMarca write setMarca;
    property QuantMunicao: Integer read getQuantMunicao write setQuantiMunicao;
    property Automatica: Boolean read getAutomatica write getAutomatica;

    end;

implementation

end.
