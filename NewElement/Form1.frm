VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6825
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8085
   LinkTopic       =   "Form1"
   ScaleHeight     =   6825
   ScaleWidth      =   8085
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   10
      Left            =   4080
      Top             =   2760
   End
   Begin VB.Image Image1 
      Height          =   420
      Index           =   1
      Left            =   6000
      Picture         =   "Form1.frx":0000
      Top             =   4800
      Width           =   285
   End
   Begin VB.Image Image1 
      Height          =   420
      Index           =   0
      Left            =   1440
      Picture         =   "Form1.frx":00AC
      Top             =   1920
      Width           =   285
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim NewElement As Integer

Private Sub Form_Load()
NewElement = 2
End Sub

Private Sub Timer1_Timer()
Load Image1(NewElement)
Image1(NewElement).Picture = Image1(0).Picture
Image1(NewElement).Visible = True
Image1(NewElement).Top = CInt(Form1.Height * Rnd)
Image1(NewElement).Left = CInt(Form1.Width * Rnd)
NewElement = NewElement + 1
End Sub

