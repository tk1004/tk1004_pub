unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Ani, FMX.Effects, FMX.Filter.Effects;

type
  TfrmUnko = class(TForm)
    layoutUnkoBase: TLayout;
    textGlyph: TText;
    animUnkoColor: TColorKeyAnimation;
    effectUnkoFill: TFillRGBEffect;
    textUnko: TText;
    aminRotation: TFloatAnimation;
    animScaleX: TFloatAnimation;
    animScaleY: TFloatAnimation;
    effectGlyphGrow: TGlowEffect;
    layoutScaleBase: TLayout;
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  frmUnko: TfrmUnko;

implementation

{$R *.fmx}

end.
