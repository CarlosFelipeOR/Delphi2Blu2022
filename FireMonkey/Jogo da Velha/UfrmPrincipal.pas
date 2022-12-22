unit UfrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.TabControl, FMX.Effects, UJogoVelha;

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout1: TLayout;
    tect_fundo_tab1: TRectangle;
    LytTab1: TLayout;
    img_capa: TImage;
    Lyt_Jogadores: TLayout;
    FlowLayout2: TFlowLayout;
    Rect_morango: TRectangle;
    rect_banana: TRectangle;
    img_morango: TImage;
    img_banana: TImage;
    Layout2: TLayout;
    Rect_deu_velha: TRectangle;
    Rect_game_over: TRectangle;
    rect_parabens: TRectangle;
    rect_fundo_tab2: TRectangle;
    rect_fim_jogo: TRectangle;
    Lyt_tab2: TLayout;
    img_capa_2: TImage;
    Layout3: TLayout;
    FlowLayout1: TFlowLayout;
    Rect_1_1: TRectangle;
    Rect_1_2: TRectangle;
    rect_1_3: TRectangle;
    Rect_2_1: TRectangle;
    Rect_2_2: TRectangle;
    rect_2_3: TRectangle;
    Rect_3_1: TRectangle;
    Rect_3_2: TRectangle;
    rect_3_3: TRectangle;
    img_1_1: TImage;
    img_1_2: TImage;
    Img_jogador: TImage;
    Img_computador: TImage;
    ShadowEffect1: TShadowEffect;
    img_1_3: TImage;
    img_2_1: TImage;
    img_2_2: TImage;
    img_3_1: TImage;
    img_2_3: TImage;
    img_3_2: TImage;
    img_3_3: TImage;
    Rect_progresso: TRectangle;
    procedure FormShow(Sender: TObject);
    procedure OnclickSelecioneJogador(Sender: TObject);
    procedure OnClickJogador(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FjogoVelha: TjogoVelha;

    procedure MarcarJogadaComputador(const aCoordenadas: string);
    procedure ReiniciarJogo;
    procedure AnimarFimjogo(const aRetangulo: TRectangle);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

Procedure TForm1.OnClickJogador(Sender: TObject);
var
  xPosicao: Integer;
  xCoordenadas: string;
  xLinha: Byte;
  XColuna: Byte;
  XImagem: TImage;
  xRetangulo: TRectangle;
begin
  xRetangulo := (Sender as TRectangle);

  xPosicao := Pos('_', xRetangulo.Name);
  xCoordenadas := Copy(xRetangulo.Name, xPosicao + 1, Length(xRetangulo.Name));

  xLinha := StrToInt(Copy(xCoordenadas, 1, 1));
  XColuna := StrToInt(Copy(xCoordenadas, 3, 1));

  FjogoVelha.RealizarJogada(Tjogador.tpplayer1, xLinha, XColuna);

  XImagem := TImage(FindComponent('img_' + xCoordenadas));
  XImagem.Bitmap := Img_jogador.Bitmap;
  XImagem.Visible := true;

  xRetangulo.HitTest := False;

  FjogoVelha.VerificarFimdoJogo(Tjogador.tpplayer1);

  if (not FjogoVelha.FimJogo) and (FjogoVelha.Jogadas < 5) then
  begin
    xCoordenadas := FjogoVelha.JogadaComputador;
    Self.MarcarJogadaComputador(xCoordenadas);

    FjogoVelha.VerificarFimdoJogo(Tjogador.tpCpu);

    if FjogoVelha.FimJogo then
      Self.AnimarFimjogo(Rect_game_over);

  end
  else
  begin
    if (FjogoVelha.Jogadas < 5) or (FjogoVelha.FimJogo) then
      Self.AnimarFimjogo(rect_parabens)

    else
      Self.AnimarFimjogo(Rect_deu_velha);

  end;

end;

procedure TForm1.AnimarFimjogo(const aRetangulo: TRectangle);
begin
  rect_fim_jogo.Visible := True;
  rect_progresso.Width := 20;

  aRetangulo.Opacity := 0;
  aRetangulo.Visible  := true;

  TThread.Synchronize(nil, procedure
   begin
     aRetangulo.AnimateFloat('Opacity', 1, 0.3);
   end).Start;

end;

  TThread.CreateAnonymousThread(nil, procedure
  begin
    Sleep(450);

    while Rect_progresso.Width < rect_Fim_jogo.width  do
     begin
       TThread.Synchronize(nil, procedure
       begin
         rect_progresso.AnimateFloat ('widith', rect_progress.Width + 50, 0.3);

       end;
       sleep (150);
     end;
     TThread.Synchronize(nil, procedure
      begin
        aRetangulo.Visible  := False;
        rect_fim_jogo.Visible  := False;

        Self.ReiniciarJogo
      end);


     end);Start;
 end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FjogoVelha.DisposeOf;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FjogoVelha := TjogoVelha.Create;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  TabControl1.TabPosition := TTabposition.None;
  TabControl1.Activetab := TabItem1;
end;

procedure TForm1.MarcarJogadaComputador(const aCoordenadas: string);
  var
    xLinha : Byte;
    xColuna: Byte;
    xRetangulo: TRectangle;
    xImagem : TImage;

  begin
  xLinha := StrToInt(Copy(aCoordenadas, 1, 1));
  xColuna := StrToInt(Copy(aCoordenadas,3 1));

  FJogoVelha.RealizarJogada(Tjogador.tpCpu,
                             xLinha,
                             xColuna);

  xRetangulo := TRectangle(FindComponent('Rect_' + aCoordenadas));

     if Assigned(xRetangulo) then
     begin
      xImagem  := TImage(FinfComponent('img_'+aCoordenadas));
      xImagem.Bitmap   := img_computador.Bitmap;
      xImagem.Visible := true;

      xReatangulo.HiTest  := False;

     end;

procedure TForm1.OnclickSelecioneJogador(Sender: TObject);
var
  xPosicao: Integer;
  xRetangulo: string;
  xJogador: string;
begin
  TabControl1.Activetab := TabItem2;

  xRetangulo := (Sender as TRectangle).Name;
  xPosicao := Pos('_', xRetangulo);
  xJogador := Copy(xRetangulo, xPosicao + 1, Length(xRetangulo));

  if xJogador = 'morango' then
  Begin
    Img_jogador.Bitmap := img_morango.Bitmap;
    Img_computador.Bitmap := img_banana.Bitmap;

  end
  else // banana
  begin
    Img_jogador.Bitmap := img_banana.Bitmap;
    Img_computador.Bitmap := img_morango.Bitmap;

  end;
end;

procedure TForm1.ReiniciarJogo;
var
  I: Integer;

begin
  TabControll.Activetab := TabIntem1;

  for I := 0 to Pred(Self.ComponentCount) do
  begin
    if Self.Components[I] is TRectangle) and (Self.Components[I].Tag > 0)
    then TRectangle(Self.Components[I]).HitTest := False; end;

    if Self.Components[I] is TRectangle) and (Self.Components[I].Tag > 0)
    then TImage(Self.Components[I]).Bitmap := nil; end;
    FjogoVelha.ReiniciarJogo; end;

    end.
