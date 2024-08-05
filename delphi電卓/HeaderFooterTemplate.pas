unit HeaderFooterTemplate;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TFo  
rm)
    edtDisplay: TEdit;
    btn0: TButton;
    btn1: TButton;
    // ...その他のボタン
    procedure btnNumberClick(Sender: TObject);
    procedure btnOperatorClick(Sender: TObject);
    procedure btnEqualClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
  private
    { Private declarations }
    FOperator: string;
    FOperand1: Double;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnNumberClick(Sender: TObject);
begin
  edtDisplay.Text := edtDisplay.Text + TButton(Sender).Caption;
end;

procedure TForm1.btnOperatorClick(Sender: TObject);
begin
  FOperator := TButton(Sender).Caption;
  FOperand1 := StrToFloat(edtDisplay.Text);
  edtDisplay.Text := '';
end;

procedure TForm1.btnEqualClick(Sender: TObject);
var
  Operand2: Double;
  Result: Double;
begin
  Operand2 := StrToFloat(edtDisplay.Text);
  case FOperator of
    '+': Result := Operand1 + Operand2;
    '-': Result := Operand1 - Operand2;
    '*': Result := Operand1 * Operand2;
    '/':
      if Operand2 <> 0 then
        Result := Operand1 / Operand2
      else
        ShowMessage('0で割ることはできません');
  end;
  edtDisplay.Text := FloatToStr(Result);
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  edtDisplay.Text := '';
  FOperator := '';
  FOperand1 := 0;
end;

end.
