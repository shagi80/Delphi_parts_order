object TextMemoForm: TTextMemoForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1090#1077#1082#1089#1090#1072
  ClientHeight = 240
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 384
    Height = 193
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clCream
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object TextMemo: TMemo
      AlignWithMargins = True
      Left = 3
      Top = 52
      Width = 376
      Height = 129
      Margins.Bottom = 10
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      Lines.Strings = (
        'TextMemo')
      ParentFont = False
      PopupMenu = EditMenu
      TabOrder = 0
      ExplicitHeight = 97
    end
    object Panel2: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 376
      Height = 43
      Align = alTop
      AutoSize = True
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clCream
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      object CaptionLB: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 368
        Height = 35
        Align = alTop
        AutoSize = False
        Caption = 'CaptionLB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
    end
  end
  object BitBtn1: TBitBtn
    Left = 282
    Top = 202
    Width = 100
    Height = 30
    Hint = #1047#1072#1082#1088#1099#1090#1100'|'#1047#1072#1082#1088#1099#1090#1100' '#1073#1077#1079' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103' '#1080#1079#1084#1077#1085#1077#1085#1080#1081
    Caption = #1047#1040#1050#1056#1067#1058#1068
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    Kind = bkCancel
  end
  object BitBtn3: TBitBtn
    Left = 176
    Top = 202
    Width = 100
    Height = 30
    Hint = #1047#1072#1087#1080#1089#1072#1090#1100'|'#1047#1072#1087#1080#1089#1072#1090#1100' '#1090#1077#1082#1089#1090
    Cancel = True
    Caption = #1047#1040#1055#1048#1057#1040#1058#1068
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 2
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C811F1B7E1F1B7A1F1A
      731E1A701E1B711F1B711F1B6C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF1C8A211B831F42A05287CA9A9BD3AB9BD2AB83C7963D974C1A6E1E1B70
      1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C912B1B8A206DBE83A8DBB587CC9866
      BC7D64BA7C86CB98A5D9B466B77D1A6C1D1B711FFFFFFFFFFFFFFFFFFF1D9B36
      1C962F72C287A8DBB260BC775CBA7359B87059B56F58B56F5BB774A5D9B369B8
      7F1A711E1B711FFFFFFFFFFFFF1EA43D4CB064AADDB464C1795FBE7175C585D4
      ECD98ACD9956B66C58B56E5CB774A6DAB4419B4E1B771FFFFFFFFFFFFF1FA942
      91D29F8DD49A64C37479C987F2FAF4FFFFFFFDFEFD86CB9657B76D5BB97285CC
      9787C79A1B781FFFFFFFFFFFFF1FAD42A6DCAF70CA7F73CA80F0F9F1FFFFFFEB
      F7EDFFFFFFFBFDFC88CD965BB97167BE7DA0D7AF1B7A1EFFFFFFFFFFFF26B44B
      A7DDB172CC8066C773B0E1B7D2EED663C170B8E3BFFFFFFFFBFDFC8CD09969C1
      7EA1D7AE1B7F1EFFFFFFFFFFFF2DBB5495D7A191D79B69C97664C66F61C46E61
      C36F61C26FB9E4C0FFFFFFE3F4E68BD1998BCE9D1C8820FFFFFFFFFFFF34BE59
      57BF70AFE1B76DCC7A68C87265C77063C56E62C46E63C471B6E3BE6FC77EACDF
      B548A95E1C8F26FFFFFFFFFFFF39C25C34BE557FCE90AEE1B56DCC7A6ACA7668
      C87268C87468C8756BC979ACDFB476C4891C962D1C942DFFFFFFFFFFFFFFFFFF
      3BC55E34C0557FCE90AFE1B792D89D77CE8377CE8392D89DAEE1B578C88B1D9D
      321D9D36FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3DC76036C25959C27496D7A3A5
      DCAEA5DCAE95D6A150B96A1FAB421FA942FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF40C9623BC55E39C25B31BD542DBB522BB9522BB75228B44EFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  end
  object BitBtn2: TBitBtn
    Left = 8
    Top = 202
    Width = 100
    Height = 30
    Cancel = True
    Caption = #1054#1063#1048#1057#1058#1048#1058#1068
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFBB6A34
      BA6530BB6631BA6630BA6630BA6630BA6530BA652FB9652E6E5E761949A80542
      BB1348AD394E8FFFFFFFFFFFFFBC6933F8F1EAF7ECDFF6EBDEF6EADEF6EADCF6
      EADCFAF3EB8AA5D72866CA2177E60579EA0164DD064DBB0345B8FFFFFFBF7138
      F5EBDFFDBF68FCBD67FBBE65FCBE64FCBE64FCBD621E52B0639DF4187FFF0076
      F80076EE0368E10345B9FFFFFFC1783CF7EDE3FDC26EFFD8A0FFD79EFFD69BFF
      D798FFD6960543BCAECDFEFFFFFFFFFFFFFFFFFF187FEF0442BCFFFFFFC47C40
      F7F0E6F8B455F7B456F7B554F8B453F8B253F7B3522453AB8DB5F64D92FF1177
      FF2186FF408AEB0344B9FFFFFFC58042F8F1E8FEE5D5FDE5D3FDE5D3FCE5D3FC
      E5D3FCE4D194A1C93D76D18DB5F7B8D6FE72A8F52F6BC90443BAFFFFFFC58245
      F8F2EBFEE7D6FDE7D6FDE7D6FDE7D6FDE6D5FDE5D3FCE4D194A1C92A5EC10543
      BC1F59BF686279FFFFFFFFFFFFC68447F9F3ECFEE8D6FEE8D7FDE7D6FDE7D6FD
      E7D5FDE5D3FBE4D0FBE3CCFADFC7FADFC6FAF2EAC68042FFFFFFFFFFFFC68849
      F9F4EDFEE8D8FEE8D8FEE8D7FEE7D6FDE5D3FCE4D1FBE1CCFAE0C7F9DDC3F8DC
      C2FAF4EDC68245FFFFFFFFFFFFC6884AF9F4EFFEE7D7FDE7D6FDE7D5FDE6D4FC
      E6D2FBE1CCFADFC7F8DCC2F6DABDF6D8BBFAF4EFC68346FFFFFFFFFFFFC6894B
      F9F4F0FCE6D3FCE6D4FDE7D3FCE4D1FBE3CDFAE0C8F8DCC2F5D6BBF3D4B5F1D2
      B3F8F4F0C48246FFFFFFFFFFFFC6894BF9F5F1FCE3CFFBE4D0FCE4CFFCE3CDFA
      E1CAF9DDC4F6D9BCF4E9DFF7F2ECFBF7F3F5EFE9C27E45FFFFFFFFFFFFC6894C
      F9F5F1FCE3CDFBE3CEFBE3CDFBE2CBF9E0C8F8DCC2F5D6BAFDFBF8FCE6CDFAE5
      C9E2B684BF7942FFFFFFFFFFFFC5884BFAF6F2FAE0C7FBE1C9FBE2C9FBE0C8F9
      DFC5F8DBC1F4D6B8FFFBF8F6D8B4E1B07DDB9264B46B3EFFFFFFFFFFFFC48549
      F7F2ECF8F4EEF8F4EDF8F3EDF8F3EDF8F3EDF8F2ECF7F2ECF2E6D7E2B27DDB94
      65B3683BFFFFFFFFFFFFFFFFFFC17D44C88B4DC88C4FC88C4FC88C4FC88C4FC8
      8D4FC98C4FC78B4FC5894BC4763BB3683CFFFFFFFFFFFFFFFFFF}
  end
  object EditMenu: TPopupMenu
    Images = ImageList1
    Left = 16
    Top = 120
    object CopyMItm: TMenuItem
      Action = EditCopy1
    end
    object PasteMitm: TMenuItem
      Action = EditPaste1
    end
    object CutMItm: TMenuItem
      Action = EditCut1
    end
  end
  object ImageList1: TImageList
    Left = 48
    Top = 120
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF00FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000840000000000000000000000840000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00840000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00000000000000000000000000FFFF
      FF00840000008400000084000000840000000000000000000000000000000000
      0000000000008400000084000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000FFFF
      FF00840000008400000084000000840000000000000000848400848484000084
      8400848484000084840084000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400848484000084
      84000000000000FFFF00000000000000000000FFFF0000000000848484000084
      8400848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFC00F9FF0000
      FE008000F6CF0000FE000000F6B70000FE000000F6B7000080000000F8B70000
      80000001FE8F000080000003FE3F000080000003FF7F000080010003FE3F0000
      80030003FEBF000080070FC3FC9F0000807F0003FDDF000080FF8007FDDF0000
      81FFF87FFDDF0000FFFFFFFFFFFF0000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 80
    Top = 120
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&'#1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Hint = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100'|'#1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      ImageIndex = 0
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&'#1042#1089#1090#1072#1074#1080#1090#1100
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100'|'#1042#1089#1090#1072#1074#1080#1090#1100' '#1090#1077#1082#1089#1090' '#1080#1079' '#1073#1091#1092#1077#1088#1072' '#1086#1073#1084#1077#1085#1072
      ImageIndex = 1
      ShortCut = 16470
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = #1042#1099'&'#1088#1077#1079#1072#1090#1100
      Hint = #1042#1099#1088#1077#1079#1072#1090#1100'|'#1042#1099#1088#1077#1079#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072
      ImageIndex = 2
      ShortCut = 16472
    end
  end
end