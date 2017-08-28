HA$PBExportHeader$pbdom_text.sru
forward
global type pbdom_text from pbdom_characterdata
end type
end forward

global type pbdom_text from pbdom_characterdata native "PBDOM170.pbx"
public function  string				GetName()
public function  string				GetText()
public function  boolean				GetContent(ref pbdom_object pbdom_object_array[])
public function  pbdom_object			AddContent(pbdom_object pbdom_object_ref)
public function  pbdom_object			InsertContent(pbdom_object pbdom_object_new, pbdom_object pbdom_object_ref)
public function  boolean				RemoveContent(pbdom_object pbdom_object_ref)
public function  pbdom_object			SetContent(pbdom_object pbdom_object_array[])
public function  boolean				SetName(string strName)
public function  pbdom_object			Clone(boolean bDeep)
public function  boolean				Equals(pbdom_object pbdom_object_ref)
public function  long					GetObjectClass()
public function  string				GetObjectClassString()
public function  pbdom_document		GetOwnerDocumentObject()
public function  pbdom_object			Detach()
public function  pbdom_object			GetParentObject()
public function  boolean				HasChildren()
public function  string				GetTextNormalize()
public function  string				GetTextTrim()
public function  boolean				IsAncestorObjectOf(pbdom_object pbdom_object_ref)
public function  pbdom_object			SetParentObject(pbdom_object pbdom_object_ref)
public function  pbdom_characterdata	SetText(string strText)
end type
global pbdom_text pbdom_text

on pbdom_text.create
call super::create
TriggerEvent( this, "constructor" )
end on

on pbdom_text.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

