object PartsListForm: TPartsListForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1080#1089#1082#1086#1082' '#1082#1086#1084#1087#1083#1077#1082#1090#1091#1102#1097#1080#1093
  ClientHeight = 512
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCanResize = FormCanResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 465
    Align = alTop
    TabOrder = 0
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 416
      Width = 674
      Height = 45
      Align = alBottom
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      object Label1: TLabel
        Left = 112
        Top = 3
        Width = 98
        Height = 13
        Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1080#1077' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ModelListLB: TLabel
        Left = 216
        Top = 3
        Width = 55
        Height = 13
        Caption = 'ModelListLB'
      end
      object NoteLB: TLabel
        Left = 216
        Top = 22
        Width = 34
        Height = 13
        Caption = 'NoteLB'
      end
      object Label3: TLabel
        Left = 112
        Top = 22
        Width = 79
        Height = 13
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077' : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DecPrtQty: TSpeedButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 23
        Height = 37
        Align = alLeft
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333300333333333333000033333333330000003333333300000
          0003333330000000000333300000000000033000000000000003300000000000
          0003333000000000000333333000000000033333333000000003333333333000
          0003333333333330000333333333333330033333333333333333}
        OnClick = DecPrtQtyClick
        ExplicitLeft = 56
        ExplicitTop = 8
        ExplicitHeight = 22
      end
      object prtQtyLb: TLabel
        AlignWithMargins = True
        Left = 29
        Top = 3
        Width = 30
        Height = 37
        Margins.Left = 0
        Margins.Right = 0
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = '0'
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        Layout = tlCenter
        ExplicitLeft = 23
      end
      object IncPrtQty: TSpeedButton
        AlignWithMargins = True
        Left = 62
        Top = 3
        Width = 23
        Height = 37
        Align = alLeft
        Flat = True
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333300333333333333330000333333333333000000333333333300000000333
          3333300000000003333330000000000003333000000000000003300000000000
          0003300000000000033330000000000333333000000003333333300000033333
          3333300003333333333330033333333333333333333333333333}
        OnClick = IncPrtQtyClick
        ExplicitLeft = 56
        ExplicitTop = 0
        ExplicitHeight = 25
      end
    end
    object grid: TDBGrid
      Left = 1
      Top = 1
      Width = 680
      Height = 412
      Align = alClient
      DataSource = DS
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODE'
          Title.Caption = #1050#1086#1076' 1'#1057
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NAME'
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRICE'
          Title.Caption = #1062#1077#1085#1072', '#1088#1091#1073
          Width = 80
          Visible = True
        end>
    end
  end
  object BitBtn1: TBitBtn
    Left = 574
    Top = 472
    Width = 100
    Height = 30
    Hint = #1047#1072#1082#1088#1099#1090#1100'|'#1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1089#1087#1080#1089#1082#1072' '#1076#1077#1090#1072#1083#1077#1081
    Caption = #1047#1040#1050#1056#1067#1058#1068
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Kind = bkCancel
  end
  object AddToBskBtn: TBitBtn
    Left = 8
    Top = 472
    Width = 100
    Height = 30
    Hint = #1042' '#1082#1086#1088#1079#1080#1085#1091'|'#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1074#1099#1073#1088#1072#1085#1085#1086#1081' '#1076#1077#1090#1072#1083#1080' '#1074' '#1079#1072#1082#1072#1079
    Caption = #1042' '#1050#1054#1056#1047#1048#1053#1059
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = AddToBskBtnClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object DS: TDataSource
    DataSet = DataMod.DBF
    OnDataChange = DSDataChange
    Left = 24
    Top = 40
  end
end
