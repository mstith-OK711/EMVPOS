unit MSMQ_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 10/24/2007 1:10:58 PM from Type Library described below.

// ************************************************************************  //
// Type Lib: mqoa.dll (1)
// LIBID: {D7D6E071-DCCD-11D0-AA4B-0060970DEBAE}
// LCID: 0
// Helpfile: 
// HelpString: Microsoft Message Queue 3.0 Object Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
// Errors:
//   Hint: Parameter 'Label' of IMSMQQuery.LookupQueue changed to 'Label_'
//   Hint: Member 'Label' of 'IMSMQQueueInfo' changed to 'Label_'
//   Hint: Member 'Class' of 'IMSMQMessage' changed to 'Class_'
//   Hint: Member 'Label' of 'IMSMQMessage' changed to 'Label_'
//   Hint: Member 'Label' of 'IMSMQQueueInfo2' changed to 'Label_'
//   Hint: Member 'Class' of 'IMSMQMessage2' changed to 'Class_'
//   Hint: Member 'Label' of 'IMSMQMessage2' changed to 'Label_'
//   Hint: Member 'Label' of 'IMSMQQueueInfo3' changed to 'Label_'
//   Hint: Member 'Class' of 'IMSMQMessage3' changed to 'Class_'
//   Hint: Member 'Label' of 'IMSMQMessage3' changed to 'Label_'
//   Hint: Parameter 'Label' of IMSMQQuery2.LookupQueue changed to 'Label_'
//   Hint: Parameter 'Label' of IMSMQQuery3.LookupQueue_v2 changed to 'Label_'
//   Hint: Parameter 'Label' of IMSMQQuery3.LookupQueue changed to 'Label_'
//   Hint: Member 'Label' of 'IMSMQQueueInfo' changed to 'Label_'
//   Hint: Member 'Class' of 'IMSMQMessage' changed to 'Class_'
//   Hint: Member 'Label' of 'IMSMQMessage' changed to 'Label_'
//   Hint: Member 'Label' of 'IMSMQQueueInfo2' changed to 'Label_'
//   Hint: Member 'Class' of 'IMSMQMessage2' changed to 'Class_'
//   Hint: Member 'Label' of 'IMSMQMessage2' changed to 'Label_'
//   Hint: Member 'Label' of 'IMSMQQueueInfo3' changed to 'Label_'
//   Hint: Member 'Class' of 'IMSMQMessage3' changed to 'Class_'
//   Hint: Member 'Label' of 'IMSMQMessage3' changed to 'Label_'
//   Error creating palette bitmap of (TMSMQQuery) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQMessage) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQQueue) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQEvent) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQQueueInfo) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQQueueInfos) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQTransaction) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQCoordinatedTransactionDispenser) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQTransactionDispenser) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQDestination) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQManagement) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQOutgoingQueueManagement) : No Server registered for this CoClass
//   Error creating palette bitmap of (TMSMQQueueManagement) : No Server registered for this CoClass
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  MSMQMajorVersion = 3;
  MSMQMinorVersion = 0;

  LIBID_MSMQ: TGUID = '{D7D6E071-DCCD-11D0-AA4B-0060970DEBAE}';

  IID_IMSMQQuery: TGUID = '{D7D6E072-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQQueueInfos: TGUID = '{D7D6E07D-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQQueueInfo: TGUID = '{D7D6E07B-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQQueue: TGUID = '{D7D6E076-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQMessage: TGUID = '{D7D6E074-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQEvent: TGUID = '{D7D6E077-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQQueueInfo2: TGUID = '{FD174A80-89CF-11D2-B0F2-00E02C074F6B}';
  IID_IMSMQQueue2: TGUID = '{EF0574E0-06D8-11D3-B100-00E02C074F6B}';
  IID_IMSMQEvent2: TGUID = '{EBA96B12-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQMessage2: TGUID = '{D9933BE0-A567-11D2-B0F3-00E02C074F6B}';
  IID_IMSMQQueueInfo3: TGUID = '{EBA96B1D-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQQueue3: TGUID = '{EBA96B1B-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQEvent3: TGUID = '{EBA96B1C-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQMessage3: TGUID = '{EBA96B1A-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQQueueInfos2: TGUID = '{EBA96B0F-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQQueueInfos3: TGUID = '{EBA96B1E-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQTransaction: TGUID = '{D7D6E07F-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQCoordinatedTransactionDispenser: TGUID = '{D7D6E081-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQTransactionDispenser: TGUID = '{D7D6E083-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQQuery2: TGUID = '{EBA96B0E-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQQuery3: TGUID = '{EBA96B19-2168-11D3-898C-00E02C074F6B}';
  CLASS_MSMQQuery: TGUID = '{D7D6E073-DCCD-11D0-AA4B-0060970DEBAE}';
  CLASS_MSMQMessage: TGUID = '{D7D6E075-DCCD-11D0-AA4B-0060970DEBAE}';
  CLASS_MSMQQueue: TGUID = '{D7D6E079-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQPrivateEvent: TGUID = '{D7AB3341-C9D3-11D1-BB47-0080C7C5A2C0}';
  DIID__DMSMQEventEvents: TGUID = '{D7D6E078-DCCD-11D0-AA4B-0060970DEBAE}';
  CLASS_MSMQEvent: TGUID = '{D7D6E07A-DCCD-11D0-AA4B-0060970DEBAE}';
  CLASS_MSMQQueueInfo: TGUID = '{D7D6E07C-DCCD-11D0-AA4B-0060970DEBAE}';
  CLASS_MSMQQueueInfos: TGUID = '{D7D6E07E-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQTransaction2: TGUID = '{2CE0C5B0-6E67-11D2-B0E6-00E02C074F6B}';
  IID_IMSMQTransaction3: TGUID = '{EBA96B13-2168-11D3-898C-00E02C074F6B}';
  CLASS_MSMQTransaction: TGUID = '{D7D6E080-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQCoordinatedTransactionDispenser2: TGUID = '{EBA96B10-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQCoordinatedTransactionDispenser3: TGUID = '{EBA96B14-2168-11D3-898C-00E02C074F6B}';
  CLASS_MSMQCoordinatedTransactionDispenser: TGUID = '{D7D6E082-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQTransactionDispenser2: TGUID = '{EBA96B11-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQTransactionDispenser3: TGUID = '{EBA96B15-2168-11D3-898C-00E02C074F6B}';
  CLASS_MSMQTransactionDispenser: TGUID = '{D7D6E084-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQApplication: TGUID = '{D7D6E085-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQApplication2: TGUID = '{12A30900-7300-11D2-B0E6-00E02C074F6B}';
  IID_IMSMQApplication3: TGUID = '{EBA96B1F-2168-11D3-898C-00E02C074F6B}';
  CLASS_MSMQApplication: TGUID = '{D7D6E086-DCCD-11D0-AA4B-0060970DEBAE}';
  IID_IMSMQDestination: TGUID = '{EBA96B16-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQPrivateDestination: TGUID = '{EBA96B17-2168-11D3-898C-00E02C074F6B}';
  CLASS_MSMQDestination: TGUID = '{EBA96B18-2168-11D3-898C-00E02C074F6B}';
  IID_IMSMQCollection: TGUID = '{0188AC2F-ECB3-4173-9779-635CA2039C72}';
  IID_IMSMQManagement: TGUID = '{BE5F0241-E489-4957-8CC4-A452FCF3E23E}';
  CLASS_MSMQManagement: TGUID = '{39CE96FE-F4C5-4484-A143-4C2D5D324229}';
  IID_IMSMQOutgoingQueueManagement: TGUID = '{64C478FB-F9B0-4695-8A7F-439AC94326D3}';
  CLASS_MSMQOutgoingQueueManagement: TGUID = '{0188401C-247A-4FED-99C6-BF14119D7055}';
  IID_IMSMQQueueManagement: TGUID = '{7FBE7759-5760-444D-B8A5-5E7AB9A84CCE}';
  CLASS_MSMQQueueManagement: TGUID = '{33B6D07E-F27D-42FA-B2D7-BF82E11E9374}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum MQCALG
type
  MQCALG = TOleEnum;
const
  MQMSG_CALG_MD2 = $00008001;
  MQMSG_CALG_MD4 = $00008002;
  MQMSG_CALG_MD5 = $00008003;
  MQMSG_CALG_SHA = $00008004;
  MQMSG_CALG_SHA1 = $00008004;
  MQMSG_CALG_MAC = $00008005;
  MQMSG_CALG_RSA_SIGN = $00002400;
  MQMSG_CALG_DSS_SIGN = $00002200;
  MQMSG_CALG_RSA_KEYX = $0000A400;
  MQMSG_CALG_DES = $00006601;
  MQMSG_CALG_RC2 = $00006602;
  MQMSG_CALG_RC4 = $00006801;
  MQMSG_CALG_SEAL = $00006802;

// Constants for enum MQTRANSACTION
type
  MQTRANSACTION = TOleEnum;
const
  MQ_NO_TRANSACTION = $00000000;
  MQ_MTS_TRANSACTION = $00000001;
  MQ_XA_TRANSACTION = $00000002;
  MQ_SINGLE_MESSAGE = $00000003;

// Constants for enum RELOPS
type
  RELOPS = TOleEnum;
const
  REL_NOP = $00000000;
  REL_EQ = $00000001;
  REL_NEQ = $00000002;
  REL_LT = $00000003;
  REL_GT = $00000004;
  REL_LE = $00000005;
  REL_GE = $00000006;

// Constants for enum MQCERT_REGISTER
type
  MQCERT_REGISTER = TOleEnum;
const
  MQCERT_REGISTER_ALWAYS = $00000001;
  MQCERT_REGISTER_IF_NOT_EXIST = $00000002;

// Constants for enum MQMSGCURSOR
type
  MQMSGCURSOR = TOleEnum;
const
  MQMSG_FIRST = $00000000;
  MQMSG_CURRENT = $00000001;
  MQMSG_NEXT = $00000002;

// Constants for enum MQMSGCLASS
type
  MQMSGCLASS = TOleEnum;
const
  MQMSG_CLASS_NORMAL = $00000000;
  MQMSG_CLASS_REPORT = $00000001;
  MQMSG_CLASS_ACK_REACH_QUEUE = $00000002;
  MQMSG_CLASS_ACK_RECEIVE = $00004000;
  MQMSG_CLASS_NACK_BAD_DST_Q = $00008000;
  MQMSG_CLASS_NACK_PURGED = $00008001;
  MQMSG_CLASS_NACK_REACH_QUEUE_TIMEOUT = $00008002;
  MQMSG_CLASS_NACK_Q_EXCEED_QUOTA = $00008003;
  MQMSG_CLASS_NACK_ACCESS_DENIED = $00008004;
  MQMSG_CLASS_NACK_HOP_COUNT_EXCEEDED = $00008005;
  MQMSG_CLASS_NACK_BAD_SIGNATURE = $00008006;
  MQMSG_CLASS_NACK_BAD_ENCRYPTION = $00008007;
  MQMSG_CLASS_NACK_COULD_NOT_ENCRYPT = $00008008;
  MQMSG_CLASS_NACK_NOT_TRANSACTIONAL_Q = $00008009;
  MQMSG_CLASS_NACK_NOT_TRANSACTIONAL_MSG = $0000800A;
  MQMSG_CLASS_NACK_UNSUPPORTED_CRYPTO_PROVIDER = $0000800B;
  MQMSG_CLASS_NACK_Q_DELETED = $0000C000;
  MQMSG_CLASS_NACK_Q_PURGED = $0000C001;
  MQMSG_CLASS_NACK_RECEIVE_TIMEOUT = $0000C002;
  MQMSG_CLASS_NACK_RECEIVE_TIMEOUT_AT_SENDER = $0000C003;

// Constants for enum MQMSGDELIVERY
type
  MQMSGDELIVERY = TOleEnum;
const
  MQMSG_DELIVERY_EXPRESS = $00000000;
  MQMSG_DELIVERY_RECOVERABLE = $00000001;

// Constants for enum MQMSGACKNOWLEDGEMENT
type
  MQMSGACKNOWLEDGEMENT = TOleEnum;
const
  MQMSG_ACKNOWLEDGMENT_NONE = $00000000;
  MQMSG_ACKNOWLEDGMENT_POS_ARRIVAL = $00000001;
  MQMSG_ACKNOWLEDGMENT_POS_RECEIVE = $00000002;
  MQMSG_ACKNOWLEDGMENT_NEG_ARRIVAL = $00000004;
  MQMSG_ACKNOWLEDGMENT_NEG_RECEIVE = $00000008;
  MQMSG_ACKNOWLEDGMENT_NACK_REACH_QUEUE = $00000004;
  MQMSG_ACKNOWLEDGMENT_FULL_REACH_QUEUE = $00000005;
  MQMSG_ACKNOWLEDGMENT_NACK_RECEIVE = $0000000C;
  MQMSG_ACKNOWLEDGMENT_FULL_RECEIVE = $0000000E;

// Constants for enum MQMSGJOURNAL
type
  MQMSGJOURNAL = TOleEnum;
const
  MQMSG_JOURNAL_NONE = $00000000;
  MQMSG_DEADLETTER = $00000001;
  MQMSG_JOURNAL = $00000002;

// Constants for enum MQMSGTRACE
type
  MQMSGTRACE = TOleEnum;
const
  MQMSG_TRACE_NONE = $00000000;
  MQMSG_SEND_ROUTE_TO_REPORT_QUEUE = $00000001;

// Constants for enum MQMSGSENDERIDTYPE
type
  MQMSGSENDERIDTYPE = TOleEnum;
const
  MQMSG_SENDERID_TYPE_NONE = $00000000;
  MQMSG_SENDERID_TYPE_SID = $00000001;

// Constants for enum MQMSGPRIVLEVEL
type
  MQMSGPRIVLEVEL = TOleEnum;
const
  MQMSG_PRIV_LEVEL_NONE = $00000000;
  MQMSG_PRIV_LEVEL_BODY = $00000001;
  MQMSG_PRIV_LEVEL_BODY_BASE = $00000001;
  MQMSG_PRIV_LEVEL_BODY_ENHANCED = $00000003;

// Constants for enum MQMSGAUTHLEVEL
type
  MQMSGAUTHLEVEL = TOleEnum;
const
  MQMSG_AUTH_LEVEL_NONE = $00000000;
  MQMSG_AUTH_LEVEL_ALWAYS = $00000001;
  MQMSG_AUTH_LEVEL_MSMQ10 = $00000002;
  MQMSG_AUTH_LEVEL_SIG10 = $00000002;
  MQMSG_AUTH_LEVEL_MSMQ20 = $00000004;
  MQMSG_AUTH_LEVEL_SIG20 = $00000004;
  MQMSG_AUTH_LEVEL_SIG30 = $00000008;

// Constants for enum MQMSGIDSIZE
type
  MQMSGIDSIZE = TOleEnum;
const
  MQMSG_MSGID_SIZE = $00000014;
  MQMSG_CORRELATIONID_SIZE = $00000014;
  MQMSG_XACTID_SIZE = $00000014;

// Constants for enum MQMSGMAX
type
  MQMSGMAX = TOleEnum;
const
  MQ_MAX_MSG_LABEL_LEN = $000000F9;

// Constants for enum MQMSGAUTHENTICATION
type
  MQMSGAUTHENTICATION = TOleEnum;
const
  MQMSG_AUTHENTICATION_NOT_REQUESTED = $00000000;
  MQMSG_AUTHENTICATION_REQUESTED = $00000001;
  MQMSG_AUTHENTICATED_SIG10 = $00000001;
  MQMSG_AUTHENTICATION_REQUESTED_EX = $00000003;
  MQMSG_AUTHENTICATED_SIG20 = $00000003;
  MQMSG_AUTHENTICATED_SIG30 = $00000005;
  MQMSG_AUTHENTICATED_SIGXML = $00000009;

// Constants for enum MQSHARE
type
  MQSHARE = TOleEnum;
const
  MQ_DENY_NONE = $00000000;
  MQ_DENY_RECEIVE_SHARE = $00000001;

// Constants for enum MQACCESS
type
  MQACCESS = TOleEnum;
const
  MQ_RECEIVE_ACCESS = $00000001;
  MQ_SEND_ACCESS = $00000002;
  MQ_PEEK_ACCESS = $00000020;
  MQ_ADMIN_ACCESS = $00000080;

// Constants for enum MQJOURNAL
type
  MQJOURNAL = TOleEnum;
const
  MQ_JOURNAL_NONE = $00000000;
  MQ_JOURNAL = $00000001;

// Constants for enum MQTRANSACTIONAL
type
  MQTRANSACTIONAL = TOleEnum;
const
  MQ_TRANSACTIONAL_NONE = $00000000;
  MQ_TRANSACTIONAL = $00000001;

// Constants for enum MQAUTHENTICATE
type
  MQAUTHENTICATE = TOleEnum;
const
  MQ_AUTHENTICATE_NONE = $00000000;
  MQ_AUTHENTICATE = $00000001;

// Constants for enum MQPRIVLEVEL
type
  MQPRIVLEVEL = TOleEnum;
const
  MQ_PRIV_LEVEL_NONE = $00000000;
  MQ_PRIV_LEVEL_OPTIONAL = $00000001;
  MQ_PRIV_LEVEL_BODY = $00000002;

// Constants for enum MQPRIORITY
type
  MQPRIORITY = TOleEnum;
const
  MQ_MIN_PRIORITY = $00000000;
  MQ_MAX_PRIORITY = $00000007;

// Constants for enum MQMAX
type
  MQMAX = TOleEnum;
const
  MQ_MAX_Q_NAME_LEN = $0000007C;
  MQ_MAX_Q_LABEL_LEN = $0000007C;

// Constants for enum QUEUE_TYPE
type
  QUEUE_TYPE = TOleEnum;
const
  MQ_TYPE_PUBLIC = $00000000;
  MQ_TYPE_PRIVATE = $00000001;
  MQ_TYPE_MACHINE = $00000002;
  MQ_TYPE_CONNECTOR = $00000003;
  MQ_TYPE_MULTICAST = $00000004;

// Constants for enum FOREIGN_STATUS
type
  FOREIGN_STATUS = TOleEnum;
const
  MQ_STATUS_FOREIGN = $00000000;
  MQ_STATUS_NOT_FOREIGN = $00000001;
  MQ_STATUS_UNKNOWN = $00000002;

// Constants for enum XACT_STATUS
type
  XACT_STATUS = TOleEnum;
const
  MQ_XACT_STATUS_XACT = $00000000;
  MQ_XACT_STATUS_NOT_XACT = $00000001;
  MQ_XACT_STATUS_UNKNOWN = $00000002;

// Constants for enum QUEUE_STATE
type
  QUEUE_STATE = TOleEnum;
const
  MQ_QUEUE_STATE_LOCAL_CONNECTION = $00000000;
  MQ_QUEUE_STATE_DISCONNECTED = $00000001;
  MQ_QUEUE_STATE_WAITING = $00000002;
  MQ_QUEUE_STATE_NEEDVALIDATE = $00000003;
  MQ_QUEUE_STATE_ONHOLD = $00000004;
  MQ_QUEUE_STATE_NONACTIVE = $00000005;
  MQ_QUEUE_STATE_CONNECTED = $00000006;
  MQ_QUEUE_STATE_DISCONNECTING = $00000007;

// Constants for enum MQDEFAULT
type
  MQDEFAULT = TOleEnum;
const
  DEFAULT_M_PRIORITY = $00000003;
  DEFAULT_M_DELIVERY = $00000000;
  DEFAULT_M_ACKNOWLEDGE = $00000000;
  DEFAULT_M_JOURNAL = $00000000;
  DEFAULT_M_APPSPECIFIC = $00000000;
  DEFAULT_M_PRIV_LEVEL = $00000000;
  DEFAULT_M_AUTH_LEVEL = $00000000;
  DEFAULT_M_SENDERID_TYPE = $00000001;
  DEFAULT_Q_JOURNAL = $00000000;
  DEFAULT_Q_BASEPRIORITY = $00000000;
  DEFAULT_Q_QUOTA = $FFFFFFFF;
  DEFAULT_Q_JOURNAL_QUOTA = $FFFFFFFF;
  DEFAULT_Q_TRANSACTION = $00000000;
  DEFAULT_Q_AUTHENTICATE = $00000000;
  DEFAULT_Q_PRIV_LEVEL = $00000001;
  DEFAULT_M_LOOKUPID = $00000000;

// Constants for enum MQERROR
type
  MQERROR = TOleEnum;
const
  MQ_ERROR = $C00E0001;
  MQ_ERROR_PROPERTY = $C00E0002;
  MQ_ERROR_QUEUE_NOT_FOUND = $C00E0003;
  MQ_ERROR_QUEUE_EXISTS = $C00E0005;
  MQ_ERROR_INVALID_PARAMETER = $C00E0006;
  MQ_ERROR_INVALID_HANDLE = $C00E0007;
  MQ_ERROR_OPERATION_CANCELLED = $C00E0008;
  MQ_ERROR_SHARING_VIOLATION = $C00E0009;
  MQ_ERROR_SERVICE_NOT_AVAILABLE = $C00E000B;
  MQ_ERROR_MACHINE_NOT_FOUND = $C00E000D;
  MQ_ERROR_ILLEGAL_SORT = $C00E0010;
  MQ_ERROR_ILLEGAL_USER = $C00E0011;
  MQ_ERROR_NO_DS = $C00E0013;
  MQ_ERROR_ILLEGAL_QUEUE_PATHNAME = $C00E0014;
  MQ_ERROR_ILLEGAL_PROPERTY_VALUE = $C00E0018;
  MQ_ERROR_ILLEGAL_PROPERTY_VT = $C00E0019;
  MQ_ERROR_BUFFER_OVERFLOW = $C00E001A;
  MQ_ERROR_IO_TIMEOUT = $C00E001B;
  MQ_ERROR_ILLEGAL_CURSOR_ACTION = $C00E001C;
  MQ_ERROR_MESSAGE_ALREADY_RECEIVED = $C00E001D;
  MQ_ERROR_ILLEGAL_FORMATNAME = $C00E001E;
  MQ_ERROR_FORMATNAME_BUFFER_TOO_SMALL = $C00E001F;
  MQ_ERROR_UNSUPPORTED_FORMATNAME_OPERATION = $C00E0020;
  MQ_ERROR_ILLEGAL_SECURITY_DESCRIPTOR = $C00E0021;
  MQ_ERROR_SENDERID_BUFFER_TOO_SMALL = $C00E0022;
  MQ_ERROR_SECURITY_DESCRIPTOR_TOO_SMALL = $C00E0023;
  MQ_ERROR_CANNOT_IMPERSONATE_CLIENT = $C00E0024;
  MQ_ERROR_ACCESS_DENIED = $C00E0025;
  MQ_ERROR_PRIVILEGE_NOT_HELD = $C00E0026;
  MQ_ERROR_INSUFFICIENT_RESOURCES = $C00E0027;
  MQ_ERROR_USER_BUFFER_TOO_SMALL = $C00E0028;
  MQ_ERROR_MESSAGE_STORAGE_FAILED = $C00E002A;
  MQ_ERROR_SENDER_CERT_BUFFER_TOO_SMALL = $C00E002B;
  MQ_ERROR_INVALID_CERTIFICATE = $C00E002C;
  MQ_ERROR_CORRUPTED_INTERNAL_CERTIFICATE = $C00E002D;
  MQ_ERROR_NO_INTERNAL_USER_CERT = $C00E002F;
  MQ_ERROR_CORRUPTED_SECURITY_DATA = $C00E0030;
  MQ_ERROR_CORRUPTED_PERSONAL_CERT_STORE = $C00E0031;
  MQ_ERROR_COMPUTER_DOES_NOT_SUPPORT_ENCRYPTION = $C00E0033;
  MQ_ERROR_BAD_SECURITY_CONTEXT = $C00E0035;
  MQ_ERROR_COULD_NOT_GET_USER_SID = $C00E0036;
  MQ_ERROR_COULD_NOT_GET_ACCOUNT_INFO = $C00E0037;
  MQ_ERROR_ILLEGAL_MQCOLUMNS = $C00E0038;
  MQ_ERROR_ILLEGAL_PROPID = $C00E0039;
  MQ_ERROR_ILLEGAL_RELATION = $C00E003A;
  MQ_ERROR_ILLEGAL_PROPERTY_SIZE = $C00E003B;
  MQ_ERROR_ILLEGAL_RESTRICTION_PROPID = $C00E003C;
  MQ_ERROR_ILLEGAL_MQQUEUEPROPS = $C00E003D;
  MQ_ERROR_PROPERTY_NOTALLOWED = $C00E003E;
  MQ_ERROR_INSUFFICIENT_PROPERTIES = $C00E003F;
  MQ_ERROR_MACHINE_EXISTS = $C00E0040;
  MQ_ERROR_ILLEGAL_MQQMPROPS = $C00E0041;
  MQ_ERROR_DS_IS_FULL = $C00E0042;
  MQ_ERROR_DS_ERROR = $C00E0043;
  MQ_ERROR_INVALID_OWNER = $C00E0044;
  MQ_ERROR_UNSUPPORTED_ACCESS_MODE = $C00E0045;
  MQ_ERROR_RESULT_BUFFER_TOO_SMALL = $C00E0046;
  MQ_ERROR_DELETE_CN_IN_USE = $C00E0048;
  MQ_ERROR_NO_RESPONSE_FROM_OBJECT_SERVER = $C00E0049;
  MQ_ERROR_OBJECT_SERVER_NOT_AVAILABLE = $C00E004A;
  MQ_ERROR_QUEUE_NOT_AVAILABLE = $C00E004B;
  MQ_ERROR_DTC_CONNECT = $C00E004C;
  MQ_ERROR_TRANSACTION_IMPORT = $C00E004E;
  MQ_ERROR_TRANSACTION_USAGE = $C00E0050;
  MQ_ERROR_TRANSACTION_SEQUENCE = $C00E0051;
  MQ_ERROR_MISSING_CONNECTOR_TYPE = $C00E0055;
  MQ_ERROR_STALE_HANDLE = $C00E0056;
  MQ_ERROR_TRANSACTION_ENLIST = $C00E0058;
  MQ_ERROR_QUEUE_DELETED = $C00E005A;
  MQ_ERROR_ILLEGAL_CONTEXT = $C00E005B;
  MQ_ERROR_ILLEGAL_SORT_PROPID = $C00E005C;
  MQ_ERROR_LABEL_TOO_LONG = $C00E005D;
  MQ_ERROR_LABEL_BUFFER_TOO_SMALL = $C00E005E;
  MQ_ERROR_MQIS_SERVER_EMPTY = $C00E005F;
  MQ_ERROR_MQIS_READONLY_MODE = $C00E0060;
  MQ_ERROR_SYMM_KEY_BUFFER_TOO_SMALL = $C00E0061;
  MQ_ERROR_SIGNATURE_BUFFER_TOO_SMALL = $C00E0062;
  MQ_ERROR_PROV_NAME_BUFFER_TOO_SMALL = $C00E0063;
  MQ_ERROR_ILLEGAL_OPERATION = $C00E0064;
  MQ_ERROR_WRITE_NOT_ALLOWED = $C00E0065;
  MQ_ERROR_WKS_CANT_SERVE_CLIENT = $C00E0066;
  MQ_ERROR_DEPEND_WKS_LICENSE_OVERFLOW = $C00E0067;
  MQ_CORRUPTED_QUEUE_WAS_DELETED = $C00E0068;
  MQ_ERROR_REMOTE_MACHINE_NOT_AVAILABLE = $C00E0069;
  MQ_ERROR_UNSUPPORTED_OPERATION = $C00E006A;
  MQ_ERROR_ENCRYPTION_PROVIDER_NOT_SUPPORTED = $C00E006B;
  MQ_ERROR_CANNOT_SET_CRYPTO_SEC_DESCR = $C00E006C;
  MQ_ERROR_CERTIFICATE_NOT_PROVIDED = $C00E006D;
  MQ_ERROR_Q_DNS_PROPERTY_NOT_SUPPORTED = $C00E006E;
  MQ_ERROR_CANT_CREATE_CERT_STORE = $C00E006F;
  MQ_ERROR_CANNOT_CREATE_CERT_STORE = $C00E006F;
  MQ_ERROR_CANT_OPEN_CERT_STORE = $C00E0070;
  MQ_ERROR_CANNOT_OPEN_CERT_STORE = $C00E0070;
  MQ_ERROR_ILLEGAL_ENTERPRISE_OPERATION = $C00E0071;
  MQ_ERROR_CANNOT_GRANT_ADD_GUID = $C00E0072;
  MQ_ERROR_CANNOT_LOAD_MSMQOCM = $C00E0073;
  MQ_ERROR_NO_ENTRY_POINT_MSMQOCM = $C00E0074;
  MQ_ERROR_NO_MSMQ_SERVERS_ON_DC = $C00E0075;
  MQ_ERROR_CANNOT_JOIN_DOMAIN = $C00E0076;
  MQ_ERROR_CANNOT_CREATE_ON_GC = $C00E0077;
  MQ_ERROR_GUID_NOT_MATCHING = $C00E0078;
  MQ_ERROR_PUBLIC_KEY_NOT_FOUND = $C00E0079;
  MQ_ERROR_PUBLIC_KEY_DOES_NOT_EXIST = $C00E007A;
  MQ_ERROR_ILLEGAL_MQPRIVATEPROPS = $C00E007B;
  MQ_ERROR_NO_GC_IN_DOMAIN = $C00E007C;
  MQ_ERROR_NO_MSMQ_SERVERS_ON_GC = $C00E007D;
  MQ_ERROR_CANNOT_GET_DN = $C00E007E;
  MQ_ERROR_CANNOT_HASH_DATA_EX = $C00E007F;
  MQ_ERROR_CANNOT_SIGN_DATA_EX = $C00E0080;
  MQ_ERROR_CANNOT_CREATE_HASH_EX = $C00E0081;
  MQ_ERROR_FAIL_VERIFY_SIGNATURE_EX = $C00E0082;
  MQ_ERROR_CANNOT_DELETE_PSC_OBJECTS = $C00E0083;
  MQ_ERROR_NO_MQUSER_OU = $C00E0084;
  MQ_ERROR_CANNOT_LOAD_MQAD = $C00E0085;
  MQ_ERROR_CANNOT_LOAD_MQDSSRV = $C00E0086;
  MQ_ERROR_PROPERTIES_CONFLICT = $C00E0087;
  MQ_ERROR_MESSAGE_NOT_FOUND = $C00E0088;
  MQ_ERROR_CANT_RESOLVE_SITES = $C00E0089;
  MQ_ERROR_NOT_SUPPORTED_BY_DEPENDENT_CLIENTS = $C00E008A;
  MQ_ERROR_OPERATION_NOT_SUPPORTED_BY_REMOTE_COMPUTER = $C00E008B;
  MQ_ERROR_NOT_A_CORRECT_OBJECT_CLASS = $C00E008C;
  MQ_ERROR_MULTI_SORT_KEYS = $C00E008D;
  MQ_ERROR_GC_NEEDED = $C00E008E;
  MQ_ERROR_DS_BIND_ROOT_FOREST = $C00E008F;
  MQ_ERROR_DS_LOCAL_USER = $C00E0090;
  MQ_ERROR_Q_ADS_PROPERTY_NOT_SUPPORTED = $C00E0091;
  MQ_ERROR_BAD_XML_FORMAT = $C00E0092;
  MQ_ERROR_UNSUPPORTED_CLASS = $C00E0093;

// Constants for enum MQWARNING
type
  MQWARNING = TOleEnum;
const
  MQ_INFORMATION_PROPERTY = $400E0001;
  MQ_INFORMATION_ILLEGAL_PROPERTY = $400E0002;
  MQ_INFORMATION_PROPERTY_IGNORED = $400E0003;
  MQ_INFORMATION_UNSUPPORTED_PROPERTY = $400E0004;
  MQ_INFORMATION_DUPLICATE_PROPERTY = $400E0005;
  MQ_INFORMATION_OPERATION_PENDING = $400E0006;
  MQ_INFORMATION_FORMATNAME_BUFFER_TOO_SMALL = $400E0009;
  MQ_INFORMATION_INTERNAL_USER_CERT_EXIST = $400E000A;
  MQ_INFORMATION_OWNER_IGNORED = $400E000B;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IMSMQQuery = interface;
  IMSMQQueryDisp = dispinterface;
  IMSMQQueueInfos = interface;
  IMSMQQueueInfosDisp = dispinterface;
  IMSMQQueueInfo = interface;
  IMSMQQueueInfoDisp = dispinterface;
  IMSMQQueue = interface;
  IMSMQQueueDisp = dispinterface;
  IMSMQMessage = interface;
  IMSMQMessageDisp = dispinterface;
  IMSMQEvent = interface;
  IMSMQEventDisp = dispinterface;
  IMSMQQueueInfo2 = interface;
  IMSMQQueueInfo2Disp = dispinterface;
  IMSMQQueue2 = interface;
  IMSMQQueue2Disp = dispinterface;
  IMSMQEvent2 = interface;
  IMSMQEvent2Disp = dispinterface;
  IMSMQMessage2 = interface;
  IMSMQMessage2Disp = dispinterface;
  IMSMQQueueInfo3 = interface;
  IMSMQQueueInfo3Disp = dispinterface;
  IMSMQQueue3 = interface;
  IMSMQQueue3Disp = dispinterface;
  IMSMQEvent3 = interface;
  IMSMQEvent3Disp = dispinterface;
  IMSMQMessage3 = interface;
  IMSMQMessage3Disp = dispinterface;
  IMSMQQueueInfos2 = interface;
  IMSMQQueueInfos2Disp = dispinterface;
  IMSMQQueueInfos3 = interface;
  IMSMQQueueInfos3Disp = dispinterface;
  IMSMQTransaction = interface;
  IMSMQTransactionDisp = dispinterface;
  IMSMQCoordinatedTransactionDispenser = interface;
  IMSMQCoordinatedTransactionDispenserDisp = dispinterface;
  IMSMQTransactionDispenser = interface;
  IMSMQTransactionDispenserDisp = dispinterface;
  IMSMQQuery2 = interface;
  IMSMQQuery2Disp = dispinterface;
  IMSMQQuery3 = interface;
  IMSMQQuery3Disp = dispinterface;
  IMSMQPrivateEvent = interface;
  IMSMQPrivateEventDisp = dispinterface;
  _DMSMQEventEvents = dispinterface;
  IMSMQTransaction2 = interface;
  IMSMQTransaction2Disp = dispinterface;
  IMSMQTransaction3 = interface;
  IMSMQTransaction3Disp = dispinterface;
  IMSMQCoordinatedTransactionDispenser2 = interface;
  IMSMQCoordinatedTransactionDispenser2Disp = dispinterface;
  IMSMQCoordinatedTransactionDispenser3 = interface;
  IMSMQCoordinatedTransactionDispenser3Disp = dispinterface;
  IMSMQTransactionDispenser2 = interface;
  IMSMQTransactionDispenser2Disp = dispinterface;
  IMSMQTransactionDispenser3 = interface;
  IMSMQTransactionDispenser3Disp = dispinterface;
  IMSMQApplication = interface;
  IMSMQApplicationDisp = dispinterface;
  IMSMQApplication2 = interface;
  IMSMQApplication2Disp = dispinterface;
  IMSMQApplication3 = interface;
  IMSMQApplication3Disp = dispinterface;
  IMSMQDestination = interface;
  IMSMQDestinationDisp = dispinterface;
  IMSMQPrivateDestination = interface;
  IMSMQPrivateDestinationDisp = dispinterface;
  IMSMQCollection = interface;
  IMSMQCollectionDisp = dispinterface;
  IMSMQManagement = interface;
  IMSMQManagementDisp = dispinterface;
  IMSMQOutgoingQueueManagement = interface;
  IMSMQOutgoingQueueManagementDisp = dispinterface;
  IMSMQQueueManagement = interface;
  IMSMQQueueManagementDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  MSMQQuery = IMSMQQuery3;
  MSMQMessage = IMSMQMessage3;
  MSMQQueue = IMSMQQueue3;
  MSMQEvent = IMSMQEvent3;
  MSMQQueueInfo = IMSMQQueueInfo3;
  MSMQQueueInfos = IMSMQQueueInfos3;
  MSMQTransaction = IMSMQTransaction3;
  MSMQCoordinatedTransactionDispenser = IMSMQCoordinatedTransactionDispenser3;
  MSMQTransactionDispenser = IMSMQTransactionDispenser3;
  MSMQApplication = IMSMQApplication3;
  MSMQDestination = IMSMQDestination;
  MSMQManagement = IMSMQManagement;
  MSMQOutgoingQueueManagement = IMSMQOutgoingQueueManagement;
  MSMQQueueManagement = IMSMQQueueManagement;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  POleVariant1 = ^OleVariant; {*}


// *********************************************************************//
// Interface: IMSMQQuery
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D7D6E072-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQQuery = interface(IDispatch)
    ['{D7D6E072-DCCD-11D0-AA4B-0060970DEBAE}']
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                         var RelModifyTime: OleVariant): IMSMQQueueInfos; safecall;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueryDisp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {D7D6E072-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQQueryDisp = dispinterface
    ['{D7D6E072-DCCD-11D0-AA4B-0060970DEBAE}']
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                         var RelModifyTime: OleVariant): IMSMQQueueInfos; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IMSMQQueueInfos
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E07D-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQQueueInfos = interface(IDispatch)
    ['{D7D6E07D-DCCD-11D0-AA4B-0060970DEBAE}']
    procedure Reset; safecall;
    function Next: IMSMQQueueInfo; safecall;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueueInfosDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E07D-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQQueueInfosDisp = dispinterface
    ['{D7D6E07D-DCCD-11D0-AA4B-0060970DEBAE}']
    procedure Reset; dispid 1610743808;
    function Next: IMSMQQueueInfo; dispid 1610743809;
  end;

// *********************************************************************//
// Interface: IMSMQQueueInfo
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E07B-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQQueueInfo = interface(IDispatch)
    ['{D7D6E07B-DCCD-11D0-AA4B-0060970DEBAE}']
    function Get_QueueGuid: WideString; safecall;
    function Get_ServiceTypeGuid: WideString; safecall;
    procedure Set_ServiceTypeGuid(const pbstrGuidServiceType: WideString); safecall;
    function Get_Label_: WideString; safecall;
    procedure Set_Label_(const pbstrLabel: WideString); safecall;
    function Get_PathName: WideString; safecall;
    procedure Set_PathName(const pbstrPathName: WideString); safecall;
    function Get_FormatName: WideString; safecall;
    procedure Set_FormatName(const pbstrFormatName: WideString); safecall;
    function Get_IsTransactional: Smallint; safecall;
    function Get_PrivLevel: Integer; safecall;
    procedure Set_PrivLevel(plPrivLevel: Integer); safecall;
    function Get_Journal: Integer; safecall;
    procedure Set_Journal(plJournal: Integer); safecall;
    function Get_Quota: Integer; safecall;
    procedure Set_Quota(plQuota: Integer); safecall;
    function Get_BasePriority: Integer; safecall;
    procedure Set_BasePriority(plBasePriority: Integer); safecall;
    function Get_CreateTime: OleVariant; safecall;
    function Get_ModifyTime: OleVariant; safecall;
    function Get_Authenticate: Integer; safecall;
    procedure Set_Authenticate(plAuthenticate: Integer); safecall;
    function Get_JournalQuota: Integer; safecall;
    procedure Set_JournalQuota(plJournalQuota: Integer); safecall;
    function Get_IsWorldReadable: Smallint; safecall;
    procedure Create(var IsTransactional: OleVariant; var IsWorldReadable: OleVariant); safecall;
    procedure Delete; safecall;
    function Open(Access: Integer; ShareMode: Integer): IMSMQQueue; safecall;
    procedure Refresh; safecall;
    procedure Update; safecall;
    property QueueGuid: WideString read Get_QueueGuid;
    property ServiceTypeGuid: WideString read Get_ServiceTypeGuid write Set_ServiceTypeGuid;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property PathName: WideString read Get_PathName write Set_PathName;
    property FormatName: WideString read Get_FormatName write Set_FormatName;
    property IsTransactional: Smallint read Get_IsTransactional;
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property Journal: Integer read Get_Journal write Set_Journal;
    property Quota: Integer read Get_Quota write Set_Quota;
    property BasePriority: Integer read Get_BasePriority write Set_BasePriority;
    property CreateTime: OleVariant read Get_CreateTime;
    property ModifyTime: OleVariant read Get_ModifyTime;
    property Authenticate: Integer read Get_Authenticate write Set_Authenticate;
    property JournalQuota: Integer read Get_JournalQuota write Set_JournalQuota;
    property IsWorldReadable: Smallint read Get_IsWorldReadable;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueueInfoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E07B-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQQueueInfoDisp = dispinterface
    ['{D7D6E07B-DCCD-11D0-AA4B-0060970DEBAE}']
    property QueueGuid: WideString readonly dispid 0;
    property ServiceTypeGuid: WideString dispid 1;
    property Label_: WideString dispid 2;
    property PathName: WideString dispid 3;
    property FormatName: WideString dispid 5;
    property IsTransactional: Smallint readonly dispid 6;
    property PrivLevel: Integer dispid 7;
    property Journal: Integer dispid 8;
    property Quota: Integer dispid 13;
    property BasePriority: Integer dispid 9;
    property CreateTime: OleVariant readonly dispid 10;
    property ModifyTime: OleVariant readonly dispid 11;
    property Authenticate: Integer dispid 12;
    property JournalQuota: Integer dispid 14;
    property IsWorldReadable: Smallint readonly dispid 15;
    procedure Create(var IsTransactional: OleVariant; var IsWorldReadable: OleVariant); dispid 1610743833;
    procedure Delete; dispid 1610743834;
    function Open(Access: Integer; ShareMode: Integer): IMSMQQueue; dispid 1610743835;
    procedure Refresh; dispid 1610743836;
    procedure Update; dispid 1610743837;
  end;

// *********************************************************************//
// Interface: IMSMQQueue
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E076-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQQueue = interface(IDispatch)
    ['{D7D6E076-DCCD-11D0-AA4B-0060970DEBAE}']
    function Get_Access: Integer; safecall;
    function Get_ShareMode: Integer; safecall;
    function Get_QueueInfo: IMSMQQueueInfo; safecall;
    function Get_Handle: Integer; safecall;
    function Get_IsOpen: Smallint; safecall;
    procedure Close; safecall;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                     var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                  var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    procedure EnableNotification(const Event: IMSMQEvent; var Cursor: OleVariant; 
                                 var ReceiveTimeout: OleVariant); safecall;
    procedure Reset; safecall;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                      var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    property Access: Integer read Get_Access;
    property ShareMode: Integer read Get_ShareMode;
    property QueueInfo: IMSMQQueueInfo read Get_QueueInfo;
    property Handle: Integer read Get_Handle;
    property IsOpen: Smallint read Get_IsOpen;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueueDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E076-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQQueueDisp = dispinterface
    ['{D7D6E076-DCCD-11D0-AA4B-0060970DEBAE}']
    property Access: Integer readonly dispid 1;
    property ShareMode: Integer readonly dispid 2;
    property QueueInfo: IMSMQQueueInfo readonly dispid 3;
    property Handle: Integer readonly dispid 0;
    property IsOpen: Smallint readonly dispid 4;
    procedure Close; dispid 1610743813;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                     var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743814;
    function Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                  var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743815;
    procedure EnableNotification(const Event: IMSMQEvent; var Cursor: OleVariant; 
                                 var ReceiveTimeout: OleVariant); dispid 1610743816;
    procedure Reset; dispid 1610743817;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743818;
    function PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                      var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743819;
    function PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743820;
  end;

// *********************************************************************//
// Interface: IMSMQMessage
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E074-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQMessage = interface(IDispatch)
    ['{D7D6E074-DCCD-11D0-AA4B-0060970DEBAE}']
    function Get_Class_: Integer; safecall;
    function Get_PrivLevel: Integer; safecall;
    procedure Set_PrivLevel(plPrivLevel: Integer); safecall;
    function Get_AuthLevel: Integer; safecall;
    procedure Set_AuthLevel(plAuthLevel: Integer); safecall;
    function Get_IsAuthenticated: Smallint; safecall;
    function Get_Delivery: Integer; safecall;
    procedure Set_Delivery(plDelivery: Integer); safecall;
    function Get_Trace: Integer; safecall;
    procedure Set_Trace(plTrace: Integer); safecall;
    function Get_Priority: Integer; safecall;
    procedure Set_Priority(plPriority: Integer); safecall;
    function Get_Journal: Integer; safecall;
    procedure Set_Journal(plJournal: Integer); safecall;
    function Get_ResponseQueueInfo: IMSMQQueueInfo; safecall;
    procedure _Set_ResponseQueueInfo(const ppqinfoResponse: IMSMQQueueInfo); safecall;
    function Get_AppSpecific: Integer; safecall;
    procedure Set_AppSpecific(plAppSpecific: Integer); safecall;
    function Get_SourceMachineGuid: WideString; safecall;
    function Get_BodyLength: Integer; safecall;
    function Get_Body: OleVariant; safecall;
    procedure Set_Body(pvarBody: OleVariant); safecall;
    function Get_AdminQueueInfo: IMSMQQueueInfo; safecall;
    procedure _Set_AdminQueueInfo(const ppqinfoAdmin: IMSMQQueueInfo); safecall;
    function Get_Id: OleVariant; safecall;
    function Get_CorrelationId: OleVariant; safecall;
    procedure Set_CorrelationId(pvarMsgId: OleVariant); safecall;
    function Get_Ack: Integer; safecall;
    procedure Set_Ack(plAck: Integer); safecall;
    function Get_Label_: WideString; safecall;
    procedure Set_Label_(const pbstrLabel: WideString); safecall;
    function Get_MaxTimeToReachQueue: Integer; safecall;
    procedure Set_MaxTimeToReachQueue(plMaxTimeToReachQueue: Integer); safecall;
    function Get_MaxTimeToReceive: Integer; safecall;
    procedure Set_MaxTimeToReceive(plMaxTimeToReceive: Integer); safecall;
    function Get_HashAlgorithm: Integer; safecall;
    procedure Set_HashAlgorithm(plHashAlg: Integer); safecall;
    function Get_EncryptAlgorithm: Integer; safecall;
    procedure Set_EncryptAlgorithm(plEncryptAlg: Integer); safecall;
    function Get_SentTime: OleVariant; safecall;
    function Get_ArrivedTime: OleVariant; safecall;
    function Get_DestinationQueueInfo: IMSMQQueueInfo; safecall;
    function Get_SenderCertificate: OleVariant; safecall;
    procedure Set_SenderCertificate(pvarSenderCert: OleVariant); safecall;
    function Get_SenderId: OleVariant; safecall;
    function Get_SenderIdType: Integer; safecall;
    procedure Set_SenderIdType(plSenderIdType: Integer); safecall;
    procedure Send(const DestinationQueue: IMSMQQueue; var Transaction: OleVariant); safecall;
    procedure AttachCurrentSecurityContext; safecall;
    property Class_: Integer read Get_Class_;
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property AuthLevel: Integer read Get_AuthLevel write Set_AuthLevel;
    property IsAuthenticated: Smallint read Get_IsAuthenticated;
    property Delivery: Integer read Get_Delivery write Set_Delivery;
    property Trace: Integer read Get_Trace write Set_Trace;
    property Priority: Integer read Get_Priority write Set_Priority;
    property Journal: Integer read Get_Journal write Set_Journal;
    property ResponseQueueInfo: IMSMQQueueInfo read Get_ResponseQueueInfo write _Set_ResponseQueueInfo;
    property AppSpecific: Integer read Get_AppSpecific write Set_AppSpecific;
    property SourceMachineGuid: WideString read Get_SourceMachineGuid;
    property BodyLength: Integer read Get_BodyLength;
    property Body: OleVariant read Get_Body write Set_Body;
    property AdminQueueInfo: IMSMQQueueInfo read Get_AdminQueueInfo write _Set_AdminQueueInfo;
    property Id: OleVariant read Get_Id;
    property CorrelationId: OleVariant read Get_CorrelationId write Set_CorrelationId;
    property Ack: Integer read Get_Ack write Set_Ack;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property MaxTimeToReachQueue: Integer read Get_MaxTimeToReachQueue write Set_MaxTimeToReachQueue;
    property MaxTimeToReceive: Integer read Get_MaxTimeToReceive write Set_MaxTimeToReceive;
    property HashAlgorithm: Integer read Get_HashAlgorithm write Set_HashAlgorithm;
    property EncryptAlgorithm: Integer read Get_EncryptAlgorithm write Set_EncryptAlgorithm;
    property SentTime: OleVariant read Get_SentTime;
    property ArrivedTime: OleVariant read Get_ArrivedTime;
    property DestinationQueueInfo: IMSMQQueueInfo read Get_DestinationQueueInfo;
    property SenderCertificate: OleVariant read Get_SenderCertificate write Set_SenderCertificate;
    property SenderId: OleVariant read Get_SenderId;
    property SenderIdType: Integer read Get_SenderIdType write Set_SenderIdType;
  end;

// *********************************************************************//
// DispIntf:  IMSMQMessageDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E074-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQMessageDisp = dispinterface
    ['{D7D6E074-DCCD-11D0-AA4B-0060970DEBAE}']
    property Class_: Integer readonly dispid 7;
    property PrivLevel: Integer dispid 25;
    property AuthLevel: Integer dispid 26;
    property IsAuthenticated: Smallint readonly dispid 27;
    property Delivery: Integer dispid 1;
    property Trace: Integer dispid 24;
    property Priority: Integer dispid 2;
    property Journal: Integer dispid 3;
    property ResponseQueueInfo: IMSMQQueueInfo dispid 4;
    property AppSpecific: Integer dispid 5;
    property SourceMachineGuid: WideString readonly dispid 6;
    property BodyLength: Integer readonly dispid 13;
    property Body: OleVariant dispid 0;
    property AdminQueueInfo: IMSMQQueueInfo dispid 8;
    property Id: OleVariant readonly dispid 9;
    property CorrelationId: OleVariant dispid 10;
    property Ack: Integer dispid 11;
    property Label_: WideString dispid 12;
    property MaxTimeToReachQueue: Integer dispid 14;
    property MaxTimeToReceive: Integer dispid 15;
    property HashAlgorithm: Integer dispid 17;
    property EncryptAlgorithm: Integer dispid 16;
    property SentTime: OleVariant readonly dispid 18;
    property ArrivedTime: OleVariant readonly dispid 19;
    property DestinationQueueInfo: IMSMQQueueInfo readonly dispid 20;
    property SenderCertificate: OleVariant dispid 21;
    property SenderId: OleVariant readonly dispid 22;
    property SenderIdType: Integer dispid 23;
    procedure Send(const DestinationQueue: IMSMQQueue; var Transaction: OleVariant); dispid 1610743855;
    procedure AttachCurrentSecurityContext; dispid 1610743856;
  end;

// *********************************************************************//
// Interface: IMSMQEvent
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E077-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQEvent = interface(IDispatch)
    ['{D7D6E077-DCCD-11D0-AA4B-0060970DEBAE}']
  end;

// *********************************************************************//
// DispIntf:  IMSMQEventDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E077-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQEventDisp = dispinterface
    ['{D7D6E077-DCCD-11D0-AA4B-0060970DEBAE}']
  end;

// *********************************************************************//
// Interface: IMSMQQueueInfo2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FD174A80-89CF-11D2-B0F2-00E02C074F6B}
// *********************************************************************//
  IMSMQQueueInfo2 = interface(IDispatch)
    ['{FD174A80-89CF-11D2-B0F2-00E02C074F6B}']
    function Get_QueueGuid: WideString; safecall;
    function Get_ServiceTypeGuid: WideString; safecall;
    procedure Set_ServiceTypeGuid(const pbstrGuidServiceType: WideString); safecall;
    function Get_Label_: WideString; safecall;
    procedure Set_Label_(const pbstrLabel: WideString); safecall;
    function Get_PathName: WideString; safecall;
    procedure Set_PathName(const pbstrPathName: WideString); safecall;
    function Get_FormatName: WideString; safecall;
    procedure Set_FormatName(const pbstrFormatName: WideString); safecall;
    function Get_IsTransactional: Smallint; safecall;
    function Get_PrivLevel: Integer; safecall;
    procedure Set_PrivLevel(plPrivLevel: Integer); safecall;
    function Get_Journal: Integer; safecall;
    procedure Set_Journal(plJournal: Integer); safecall;
    function Get_Quota: Integer; safecall;
    procedure Set_Quota(plQuota: Integer); safecall;
    function Get_BasePriority: Integer; safecall;
    procedure Set_BasePriority(plBasePriority: Integer); safecall;
    function Get_CreateTime: OleVariant; safecall;
    function Get_ModifyTime: OleVariant; safecall;
    function Get_Authenticate: Integer; safecall;
    procedure Set_Authenticate(plAuthenticate: Integer); safecall;
    function Get_JournalQuota: Integer; safecall;
    procedure Set_JournalQuota(plJournalQuota: Integer); safecall;
    function Get_IsWorldReadable: Smallint; safecall;
    procedure Create(var IsTransactional: OleVariant; var IsWorldReadable: OleVariant); safecall;
    procedure Delete; safecall;
    function Open(Access: Integer; ShareMode: Integer): IMSMQQueue2; safecall;
    procedure Refresh; safecall;
    procedure Update; safecall;
    function Get_PathNameDNS: WideString; safecall;
    function Get_Properties: IDispatch; safecall;
    function Get_Security: OleVariant; safecall;
    procedure Set_Security(pvarSecurity: OleVariant); safecall;
    property QueueGuid: WideString read Get_QueueGuid;
    property ServiceTypeGuid: WideString read Get_ServiceTypeGuid write Set_ServiceTypeGuid;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property PathName: WideString read Get_PathName write Set_PathName;
    property FormatName: WideString read Get_FormatName write Set_FormatName;
    property IsTransactional: Smallint read Get_IsTransactional;
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property Journal: Integer read Get_Journal write Set_Journal;
    property Quota: Integer read Get_Quota write Set_Quota;
    property BasePriority: Integer read Get_BasePriority write Set_BasePriority;
    property CreateTime: OleVariant read Get_CreateTime;
    property ModifyTime: OleVariant read Get_ModifyTime;
    property Authenticate: Integer read Get_Authenticate write Set_Authenticate;
    property JournalQuota: Integer read Get_JournalQuota write Set_JournalQuota;
    property IsWorldReadable: Smallint read Get_IsWorldReadable;
    property PathNameDNS: WideString read Get_PathNameDNS;
    property Properties: IDispatch read Get_Properties;
    property Security: OleVariant read Get_Security write Set_Security;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueueInfo2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {FD174A80-89CF-11D2-B0F2-00E02C074F6B}
// *********************************************************************//
  IMSMQQueueInfo2Disp = dispinterface
    ['{FD174A80-89CF-11D2-B0F2-00E02C074F6B}']
    property QueueGuid: WideString readonly dispid 0;
    property ServiceTypeGuid: WideString dispid 1;
    property Label_: WideString dispid 2;
    property PathName: WideString dispid 3;
    property FormatName: WideString dispid 5;
    property IsTransactional: Smallint readonly dispid 6;
    property PrivLevel: Integer dispid 7;
    property Journal: Integer dispid 8;
    property Quota: Integer dispid 13;
    property BasePriority: Integer dispid 9;
    property CreateTime: OleVariant readonly dispid 10;
    property ModifyTime: OleVariant readonly dispid 11;
    property Authenticate: Integer dispid 12;
    property JournalQuota: Integer dispid 14;
    property IsWorldReadable: Smallint readonly dispid 15;
    procedure Create(var IsTransactional: OleVariant; var IsWorldReadable: OleVariant); dispid 1610743833;
    procedure Delete; dispid 1610743834;
    function Open(Access: Integer; ShareMode: Integer): IMSMQQueue2; dispid 1610743835;
    procedure Refresh; dispid 1610743836;
    procedure Update; dispid 1610743837;
    property PathNameDNS: WideString readonly dispid 16;
    property Properties: IDispatch readonly dispid 17;
    property Security: OleVariant dispid 18;
  end;

// *********************************************************************//
// Interface: IMSMQQueue2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EF0574E0-06D8-11D3-B100-00E02C074F6B}
// *********************************************************************//
  IMSMQQueue2 = interface(IDispatch)
    ['{EF0574E0-06D8-11D3-B100-00E02C074F6B}']
    function Get_Access: Integer; safecall;
    function Get_ShareMode: Integer; safecall;
    function Get_QueueInfo: IMSMQQueueInfo2; safecall;
    function Get_Handle: Integer; safecall;
    function Get_IsOpen: Smallint; safecall;
    procedure Close; safecall;
    function Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                        var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function Peek_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                     var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    procedure EnableNotification(const Event: IMSMQEvent2; var Cursor: OleVariant; 
                                 var ReceiveTimeout: OleVariant); safecall;
    procedure Reset; safecall;
    function ReceiveCurrent_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                               var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function PeekNext_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function PeekCurrent_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                            var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                     var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                     var WantConnectorType: OleVariant): IMSMQMessage2; safecall;
    function Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                  var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage2; safecall;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                            var WantConnectorType: OleVariant): IMSMQMessage2; safecall;
    function PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                      var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage2; safecall;
    function PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage2; safecall;
    function Get_Properties: IDispatch; safecall;
    property Access: Integer read Get_Access;
    property ShareMode: Integer read Get_ShareMode;
    property QueueInfo: IMSMQQueueInfo2 read Get_QueueInfo;
    property Handle: Integer read Get_Handle;
    property IsOpen: Smallint read Get_IsOpen;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueue2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EF0574E0-06D8-11D3-B100-00E02C074F6B}
// *********************************************************************//
  IMSMQQueue2Disp = dispinterface
    ['{EF0574E0-06D8-11D3-B100-00E02C074F6B}']
    property Access: Integer readonly dispid 1;
    property ShareMode: Integer readonly dispid 2;
    property QueueInfo: IMSMQQueueInfo2 readonly dispid 3;
    property Handle: Integer readonly dispid 0;
    property IsOpen: Smallint readonly dispid 4;
    procedure Close; dispid 1610743813;
    function Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                        var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743814;
    function Peek_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                     var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743815;
    procedure EnableNotification(const Event: IMSMQEvent2; var Cursor: OleVariant; 
                                 var ReceiveTimeout: OleVariant); dispid 1610743816;
    procedure Reset; dispid 1610743817;
    function ReceiveCurrent_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                               var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743818;
    function PeekNext_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743819;
    function PeekCurrent_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                            var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743820;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                     var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                     var WantConnectorType: OleVariant): IMSMQMessage2; dispid 1610743821;
    function Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                  var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage2; dispid 1610743822;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                            var WantConnectorType: OleVariant): IMSMQMessage2; dispid 1610743823;
    function PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                      var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage2; dispid 1610743824;
    function PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage2; dispid 1610743825;
    property Properties: IDispatch readonly dispid 5;
  end;

// *********************************************************************//
// Interface: IMSMQEvent2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B12-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQEvent2 = interface(IMSMQEvent)
    ['{EBA96B12-2168-11D3-898C-00E02C074F6B}']
    function Get_Properties: IDispatch; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQEvent2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B12-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQEvent2Disp = dispinterface
    ['{EBA96B12-2168-11D3-898C-00E02C074F6B}']
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQMessage2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D9933BE0-A567-11D2-B0F3-00E02C074F6B}
// *********************************************************************//
  IMSMQMessage2 = interface(IDispatch)
    ['{D9933BE0-A567-11D2-B0F3-00E02C074F6B}']
    function Get_Class_: Integer; safecall;
    function Get_PrivLevel: Integer; safecall;
    procedure Set_PrivLevel(plPrivLevel: Integer); safecall;
    function Get_AuthLevel: Integer; safecall;
    procedure Set_AuthLevel(plAuthLevel: Integer); safecall;
    function Get_IsAuthenticated: Smallint; safecall;
    function Get_Delivery: Integer; safecall;
    procedure Set_Delivery(plDelivery: Integer); safecall;
    function Get_Trace: Integer; safecall;
    procedure Set_Trace(plTrace: Integer); safecall;
    function Get_Priority: Integer; safecall;
    procedure Set_Priority(plPriority: Integer); safecall;
    function Get_Journal: Integer; safecall;
    procedure Set_Journal(plJournal: Integer); safecall;
    function Get_ResponseQueueInfo_v1: IMSMQQueueInfo; safecall;
    procedure _Set_ResponseQueueInfo_v1(const ppqinfoResponse: IMSMQQueueInfo); safecall;
    function Get_AppSpecific: Integer; safecall;
    procedure Set_AppSpecific(plAppSpecific: Integer); safecall;
    function Get_SourceMachineGuid: WideString; safecall;
    function Get_BodyLength: Integer; safecall;
    function Get_Body: OleVariant; safecall;
    procedure Set_Body(pvarBody: OleVariant); safecall;
    function Get_AdminQueueInfo_v1: IMSMQQueueInfo; safecall;
    procedure _Set_AdminQueueInfo_v1(const ppqinfoAdmin: IMSMQQueueInfo); safecall;
    function Get_Id: OleVariant; safecall;
    function Get_CorrelationId: OleVariant; safecall;
    procedure Set_CorrelationId(pvarMsgId: OleVariant); safecall;
    function Get_Ack: Integer; safecall;
    procedure Set_Ack(plAck: Integer); safecall;
    function Get_Label_: WideString; safecall;
    procedure Set_Label_(const pbstrLabel: WideString); safecall;
    function Get_MaxTimeToReachQueue: Integer; safecall;
    procedure Set_MaxTimeToReachQueue(plMaxTimeToReachQueue: Integer); safecall;
    function Get_MaxTimeToReceive: Integer; safecall;
    procedure Set_MaxTimeToReceive(plMaxTimeToReceive: Integer); safecall;
    function Get_HashAlgorithm: Integer; safecall;
    procedure Set_HashAlgorithm(plHashAlg: Integer); safecall;
    function Get_EncryptAlgorithm: Integer; safecall;
    procedure Set_EncryptAlgorithm(plEncryptAlg: Integer); safecall;
    function Get_SentTime: OleVariant; safecall;
    function Get_ArrivedTime: OleVariant; safecall;
    function Get_DestinationQueueInfo: IMSMQQueueInfo2; safecall;
    function Get_SenderCertificate: OleVariant; safecall;
    procedure Set_SenderCertificate(pvarSenderCert: OleVariant); safecall;
    function Get_SenderId: OleVariant; safecall;
    function Get_SenderIdType: Integer; safecall;
    procedure Set_SenderIdType(plSenderIdType: Integer); safecall;
    procedure Send(const DestinationQueue: IMSMQQueue2; var Transaction: OleVariant); safecall;
    procedure AttachCurrentSecurityContext; safecall;
    function Get_SenderVersion: Integer; safecall;
    function Get_Extension: OleVariant; safecall;
    procedure Set_Extension(pvarExtension: OleVariant); safecall;
    function Get_ConnectorTypeGuid: WideString; safecall;
    procedure Set_ConnectorTypeGuid(const pbstrGuidConnectorType: WideString); safecall;
    function Get_TransactionStatusQueueInfo: IMSMQQueueInfo2; safecall;
    function Get_DestinationSymmetricKey: OleVariant; safecall;
    procedure Set_DestinationSymmetricKey(pvarDestSymmKey: OleVariant); safecall;
    function Get_Signature: OleVariant; safecall;
    procedure Set_Signature(pvarSignature: OleVariant); safecall;
    function Get_AuthenticationProviderType: Integer; safecall;
    procedure Set_AuthenticationProviderType(plAuthProvType: Integer); safecall;
    function Get_AuthenticationProviderName: WideString; safecall;
    procedure Set_AuthenticationProviderName(const pbstrAuthProvName: WideString); safecall;
    procedure Set_SenderId(pvarSenderId: OleVariant); safecall;
    function Get_MsgClass: Integer; safecall;
    procedure Set_MsgClass(plMsgClass: Integer); safecall;
    function Get_Properties: IDispatch; safecall;
    function Get_TransactionId: OleVariant; safecall;
    function Get_IsFirstInTransaction: Smallint; safecall;
    function Get_IsLastInTransaction: Smallint; safecall;
    function Get_ResponseQueueInfo: IMSMQQueueInfo2; safecall;
    procedure _Set_ResponseQueueInfo(const ppqinfoResponse: IMSMQQueueInfo2); safecall;
    function Get_AdminQueueInfo: IMSMQQueueInfo2; safecall;
    procedure _Set_AdminQueueInfo(const ppqinfoAdmin: IMSMQQueueInfo2); safecall;
    function Get_ReceivedAuthenticationLevel: Smallint; safecall;
    property Class_: Integer read Get_Class_;
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property AuthLevel: Integer read Get_AuthLevel write Set_AuthLevel;
    property IsAuthenticated: Smallint read Get_IsAuthenticated;
    property Delivery: Integer read Get_Delivery write Set_Delivery;
    property Trace: Integer read Get_Trace write Set_Trace;
    property Priority: Integer read Get_Priority write Set_Priority;
    property Journal: Integer read Get_Journal write Set_Journal;
    property ResponseQueueInfo_v1: IMSMQQueueInfo read Get_ResponseQueueInfo_v1 write _Set_ResponseQueueInfo_v1;
    property AppSpecific: Integer read Get_AppSpecific write Set_AppSpecific;
    property SourceMachineGuid: WideString read Get_SourceMachineGuid;
    property BodyLength: Integer read Get_BodyLength;
    property Body: OleVariant read Get_Body write Set_Body;
    property AdminQueueInfo_v1: IMSMQQueueInfo read Get_AdminQueueInfo_v1 write _Set_AdminQueueInfo_v1;
    property Id: OleVariant read Get_Id;
    property CorrelationId: OleVariant read Get_CorrelationId write Set_CorrelationId;
    property Ack: Integer read Get_Ack write Set_Ack;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property MaxTimeToReachQueue: Integer read Get_MaxTimeToReachQueue write Set_MaxTimeToReachQueue;
    property MaxTimeToReceive: Integer read Get_MaxTimeToReceive write Set_MaxTimeToReceive;
    property HashAlgorithm: Integer read Get_HashAlgorithm write Set_HashAlgorithm;
    property EncryptAlgorithm: Integer read Get_EncryptAlgorithm write Set_EncryptAlgorithm;
    property SentTime: OleVariant read Get_SentTime;
    property ArrivedTime: OleVariant read Get_ArrivedTime;
    property DestinationQueueInfo: IMSMQQueueInfo2 read Get_DestinationQueueInfo;
    property SenderCertificate: OleVariant read Get_SenderCertificate write Set_SenderCertificate;
    property SenderId: OleVariant read Get_SenderId write Set_SenderId;
    property SenderIdType: Integer read Get_SenderIdType write Set_SenderIdType;
    property SenderVersion: Integer read Get_SenderVersion;
    property Extension: OleVariant read Get_Extension write Set_Extension;
    property ConnectorTypeGuid: WideString read Get_ConnectorTypeGuid write Set_ConnectorTypeGuid;
    property TransactionStatusQueueInfo: IMSMQQueueInfo2 read Get_TransactionStatusQueueInfo;
    property DestinationSymmetricKey: OleVariant read Get_DestinationSymmetricKey write Set_DestinationSymmetricKey;
    property Signature: OleVariant read Get_Signature write Set_Signature;
    property AuthenticationProviderType: Integer read Get_AuthenticationProviderType write Set_AuthenticationProviderType;
    property AuthenticationProviderName: WideString read Get_AuthenticationProviderName write Set_AuthenticationProviderName;
    property MsgClass: Integer read Get_MsgClass write Set_MsgClass;
    property Properties: IDispatch read Get_Properties;
    property TransactionId: OleVariant read Get_TransactionId;
    property IsFirstInTransaction: Smallint read Get_IsFirstInTransaction;
    property IsLastInTransaction: Smallint read Get_IsLastInTransaction;
    property ResponseQueueInfo: IMSMQQueueInfo2 read Get_ResponseQueueInfo write _Set_ResponseQueueInfo;
    property AdminQueueInfo: IMSMQQueueInfo2 read Get_AdminQueueInfo write _Set_AdminQueueInfo;
    property ReceivedAuthenticationLevel: Smallint read Get_ReceivedAuthenticationLevel;
  end;

// *********************************************************************//
// DispIntf:  IMSMQMessage2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D9933BE0-A567-11D2-B0F3-00E02C074F6B}
// *********************************************************************//
  IMSMQMessage2Disp = dispinterface
    ['{D9933BE0-A567-11D2-B0F3-00E02C074F6B}']
    property Class_: Integer readonly dispid 7;
    property PrivLevel: Integer dispid 25;
    property AuthLevel: Integer dispid 26;
    property IsAuthenticated: Smallint readonly dispid 27;
    property Delivery: Integer dispid 1;
    property Trace: Integer dispid 24;
    property Priority: Integer dispid 2;
    property Journal: Integer dispid 3;
    property ResponseQueueInfo_v1: IMSMQQueueInfo dispid 4;
    property AppSpecific: Integer dispid 5;
    property SourceMachineGuid: WideString readonly dispid 6;
    property BodyLength: Integer readonly dispid 13;
    property Body: OleVariant dispid 0;
    property AdminQueueInfo_v1: IMSMQQueueInfo dispid 8;
    property Id: OleVariant readonly dispid 9;
    property CorrelationId: OleVariant dispid 10;
    property Ack: Integer dispid 11;
    property Label_: WideString dispid 12;
    property MaxTimeToReachQueue: Integer dispid 14;
    property MaxTimeToReceive: Integer dispid 15;
    property HashAlgorithm: Integer dispid 17;
    property EncryptAlgorithm: Integer dispid 16;
    property SentTime: OleVariant readonly dispid 18;
    property ArrivedTime: OleVariant readonly dispid 19;
    property DestinationQueueInfo: IMSMQQueueInfo2 readonly dispid 20;
    property SenderCertificate: OleVariant dispid 21;
    property SenderId: OleVariant dispid 22;
    property SenderIdType: Integer dispid 23;
    procedure Send(const DestinationQueue: IMSMQQueue2; var Transaction: OleVariant); dispid 1610743855;
    procedure AttachCurrentSecurityContext; dispid 1610743856;
    property SenderVersion: Integer readonly dispid 28;
    property Extension: OleVariant dispid 29;
    property ConnectorTypeGuid: WideString dispid 30;
    property TransactionStatusQueueInfo: IMSMQQueueInfo2 readonly dispid 31;
    property DestinationSymmetricKey: OleVariant dispid 32;
    property Signature: OleVariant dispid 33;
    property AuthenticationProviderType: Integer dispid 34;
    property AuthenticationProviderName: WideString dispid 35;
    property MsgClass: Integer dispid 36;
    property Properties: IDispatch readonly dispid 37;
    property TransactionId: OleVariant readonly dispid 38;
    property IsFirstInTransaction: Smallint readonly dispid 39;
    property IsLastInTransaction: Smallint readonly dispid 40;
    property ResponseQueueInfo: IMSMQQueueInfo2 dispid 41;
    property AdminQueueInfo: IMSMQQueueInfo2 dispid 42;
    property ReceivedAuthenticationLevel: Smallint readonly dispid 43;
  end;

// *********************************************************************//
// Interface: IMSMQQueueInfo3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1D-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQueueInfo3 = interface(IDispatch)
    ['{EBA96B1D-2168-11D3-898C-00E02C074F6B}']
    function Get_QueueGuid: WideString; safecall;
    function Get_ServiceTypeGuid: WideString; safecall;
    procedure Set_ServiceTypeGuid(const pbstrGuidServiceType: WideString); safecall;
    function Get_Label_: WideString; safecall;
    procedure Set_Label_(const pbstrLabel: WideString); safecall;
    function Get_PathName: WideString; safecall;
    procedure Set_PathName(const pbstrPathName: WideString); safecall;
    function Get_FormatName: WideString; safecall;
    procedure Set_FormatName(const pbstrFormatName: WideString); safecall;
    function Get_IsTransactional: Smallint; safecall;
    function Get_PrivLevel: Integer; safecall;
    procedure Set_PrivLevel(plPrivLevel: Integer); safecall;
    function Get_Journal: Integer; safecall;
    procedure Set_Journal(plJournal: Integer); safecall;
    function Get_Quota: Integer; safecall;
    procedure Set_Quota(plQuota: Integer); safecall;
    function Get_BasePriority: Integer; safecall;
    procedure Set_BasePriority(plBasePriority: Integer); safecall;
    function Get_CreateTime: OleVariant; safecall;
    function Get_ModifyTime: OleVariant; safecall;
    function Get_Authenticate: Integer; safecall;
    procedure Set_Authenticate(plAuthenticate: Integer); safecall;
    function Get_JournalQuota: Integer; safecall;
    procedure Set_JournalQuota(plJournalQuota: Integer); safecall;
    function Get_IsWorldReadable: Smallint; safecall;
    procedure Create(var IsTransactional: OleVariant; var IsWorldReadable: OleVariant); safecall;
    procedure Delete; safecall;
    function Open(Access: Integer; ShareMode: Integer): IMSMQQueue3; safecall;
    procedure Refresh; safecall;
    procedure Update; safecall;
    function Get_PathNameDNS: WideString; safecall;
    function Get_Properties: IDispatch; safecall;
    function Get_Security: OleVariant; safecall;
    procedure Set_Security(pvarSecurity: OleVariant); safecall;
    function Get_IsTransactional2: WordBool; safecall;
    function Get_IsWorldReadable2: WordBool; safecall;
    function Get_MulticastAddress: WideString; safecall;
    procedure Set_MulticastAddress(const pbstrMulticastAddress: WideString); safecall;
    function Get_ADsPath: WideString; safecall;
    property QueueGuid: WideString read Get_QueueGuid;
    property ServiceTypeGuid: WideString read Get_ServiceTypeGuid write Set_ServiceTypeGuid;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property PathName: WideString read Get_PathName write Set_PathName;
    property FormatName: WideString read Get_FormatName write Set_FormatName;
    property IsTransactional: Smallint read Get_IsTransactional;
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property Journal: Integer read Get_Journal write Set_Journal;
    property Quota: Integer read Get_Quota write Set_Quota;
    property BasePriority: Integer read Get_BasePriority write Set_BasePriority;
    property CreateTime: OleVariant read Get_CreateTime;
    property ModifyTime: OleVariant read Get_ModifyTime;
    property Authenticate: Integer read Get_Authenticate write Set_Authenticate;
    property JournalQuota: Integer read Get_JournalQuota write Set_JournalQuota;
    property IsWorldReadable: Smallint read Get_IsWorldReadable;
    property PathNameDNS: WideString read Get_PathNameDNS;
    property Properties: IDispatch read Get_Properties;
    property Security: OleVariant read Get_Security write Set_Security;
    property IsTransactional2: WordBool read Get_IsTransactional2;
    property IsWorldReadable2: WordBool read Get_IsWorldReadable2;
    property MulticastAddress: WideString read Get_MulticastAddress write Set_MulticastAddress;
    property ADsPath: WideString read Get_ADsPath;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueueInfo3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1D-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQueueInfo3Disp = dispinterface
    ['{EBA96B1D-2168-11D3-898C-00E02C074F6B}']
    property QueueGuid: WideString readonly dispid 0;
    property ServiceTypeGuid: WideString dispid 1;
    property Label_: WideString dispid 2;
    property PathName: WideString dispid 3;
    property FormatName: WideString dispid 5;
    property IsTransactional: Smallint readonly dispid 6;
    property PrivLevel: Integer dispid 7;
    property Journal: Integer dispid 8;
    property Quota: Integer dispid 13;
    property BasePriority: Integer dispid 9;
    property CreateTime: OleVariant readonly dispid 10;
    property ModifyTime: OleVariant readonly dispid 11;
    property Authenticate: Integer dispid 12;
    property JournalQuota: Integer dispid 14;
    property IsWorldReadable: Smallint readonly dispid 15;
    procedure Create(var IsTransactional: OleVariant; var IsWorldReadable: OleVariant); dispid 1610743833;
    procedure Delete; dispid 1610743834;
    function Open(Access: Integer; ShareMode: Integer): IMSMQQueue3; dispid 1610743835;
    procedure Refresh; dispid 1610743836;
    procedure Update; dispid 1610743837;
    property PathNameDNS: WideString readonly dispid 16;
    property Properties: IDispatch readonly dispid 17;
    property Security: OleVariant dispid 18;
    property IsTransactional2: WordBool readonly dispid 20;
    property IsWorldReadable2: WordBool readonly dispid 21;
    property MulticastAddress: WideString dispid 22;
    property ADsPath: WideString readonly dispid 19;
  end;

// *********************************************************************//
// Interface: IMSMQQueue3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1B-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQueue3 = interface(IDispatch)
    ['{EBA96B1B-2168-11D3-898C-00E02C074F6B}']
    function Get_Access: Integer; safecall;
    function Get_ShareMode: Integer; safecall;
    function Get_QueueInfo: IMSMQQueueInfo3; safecall;
    function Get_Handle: Integer; safecall;
    function Get_IsOpen: Smallint; safecall;
    procedure Close; safecall;
    function Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                        var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function Peek_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                     var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    procedure EnableNotification(const Event: IMSMQEvent3; var Cursor: OleVariant; 
                                 var ReceiveTimeout: OleVariant); safecall;
    procedure Reset; safecall;
    function ReceiveCurrent_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                               var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function PeekNext_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function PeekCurrent_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                            var ReceiveTimeout: OleVariant): IMSMQMessage; safecall;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                     var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                     var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                  var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                            var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                      var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function Get_Properties: IDispatch; safecall;
    function Get_Handle2: OleVariant; safecall;
    function ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                               var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                               var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                   var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                       var WantDestinationQueue: OleVariant; 
                                       var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function ReceiveFirstByLookupId(var Transaction: OleVariant; 
                                    var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                    var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function ReceiveLastByLookupId(var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                   var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function PeekByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function PeekNextByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function PeekPreviousByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                    var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function PeekFirstByLookupId(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                 var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    function PeekLastByLookupId(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                var WantConnectorType: OleVariant): IMSMQMessage3; safecall;
    procedure Purge; safecall;
    function Get_IsOpen2: WordBool; safecall;
    property Access: Integer read Get_Access;
    property ShareMode: Integer read Get_ShareMode;
    property QueueInfo: IMSMQQueueInfo3 read Get_QueueInfo;
    property Handle: Integer read Get_Handle;
    property IsOpen: Smallint read Get_IsOpen;
    property Properties: IDispatch read Get_Properties;
    property Handle2: OleVariant read Get_Handle2;
    property IsOpen2: WordBool read Get_IsOpen2;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueue3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1B-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQueue3Disp = dispinterface
    ['{EBA96B1B-2168-11D3-898C-00E02C074F6B}']
    property Access: Integer readonly dispid 1;
    property ShareMode: Integer readonly dispid 2;
    property QueueInfo: IMSMQQueueInfo3 readonly dispid 3;
    property Handle: Integer readonly dispid 0;
    property IsOpen: Smallint readonly dispid 4;
    procedure Close; dispid 1610743813;
    function Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                        var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743814;
    function Peek_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                     var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743815;
    procedure EnableNotification(const Event: IMSMQEvent3; var Cursor: OleVariant; 
                                 var ReceiveTimeout: OleVariant); dispid 1610743816;
    procedure Reset; dispid 1610743817;
    function ReceiveCurrent_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                               var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743818;
    function PeekNext_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743819;
    function PeekCurrent_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                            var ReceiveTimeout: OleVariant): IMSMQMessage; dispid 1610743820;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                     var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                     var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743821;
    function Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                  var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743822;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                            var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743823;
    function PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                      var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743824;
    function PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743825;
    property Properties: IDispatch readonly dispid 5;
    property Handle2: OleVariant readonly dispid 6;
    function ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                               var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                               var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743828;
    function ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                   var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743829;
    function ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                       var WantDestinationQueue: OleVariant; 
                                       var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743830;
    function ReceiveFirstByLookupId(var Transaction: OleVariant; 
                                    var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                    var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743831;
    function ReceiveLastByLookupId(var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                   var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743832;
    function PeekByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743833;
    function PeekNextByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743834;
    function PeekPreviousByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                    var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743835;
    function PeekFirstByLookupId(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                 var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743836;
    function PeekLastByLookupId(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                var WantConnectorType: OleVariant): IMSMQMessage3; dispid 1610743837;
    procedure Purge; dispid 1610743838;
    property IsOpen2: WordBool readonly dispid 7;
  end;

// *********************************************************************//
// Interface: IMSMQEvent3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1C-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQEvent3 = interface(IMSMQEvent2)
    ['{EBA96B1C-2168-11D3-898C-00E02C074F6B}']
  end;

// *********************************************************************//
// DispIntf:  IMSMQEvent3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1C-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQEvent3Disp = dispinterface
    ['{EBA96B1C-2168-11D3-898C-00E02C074F6B}']
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQMessage3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1A-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQMessage3 = interface(IDispatch)
    ['{EBA96B1A-2168-11D3-898C-00E02C074F6B}']
    function Get_Class_: Integer; safecall;
    function Get_PrivLevel: Integer; safecall;
    procedure Set_PrivLevel(plPrivLevel: Integer); safecall;
    function Get_AuthLevel: Integer; safecall;
    procedure Set_AuthLevel(plAuthLevel: Integer); safecall;
    function Get_IsAuthenticated: Smallint; safecall;
    function Get_Delivery: Integer; safecall;
    procedure Set_Delivery(plDelivery: Integer); safecall;
    function Get_Trace: Integer; safecall;
    procedure Set_Trace(plTrace: Integer); safecall;
    function Get_Priority: Integer; safecall;
    procedure Set_Priority(plPriority: Integer); safecall;
    function Get_Journal: Integer; safecall;
    procedure Set_Journal(plJournal: Integer); safecall;
    function Get_ResponseQueueInfo_v1: IMSMQQueueInfo; safecall;
    procedure _Set_ResponseQueueInfo_v1(const ppqinfoResponse: IMSMQQueueInfo); safecall;
    function Get_AppSpecific: Integer; safecall;
    procedure Set_AppSpecific(plAppSpecific: Integer); safecall;
    function Get_SourceMachineGuid: WideString; safecall;
    function Get_BodyLength: Integer; safecall;
    function Get_Body: OleVariant; safecall;
    procedure Set_Body(pvarBody: OleVariant); safecall;
    function Get_AdminQueueInfo_v1: IMSMQQueueInfo; safecall;
    procedure _Set_AdminQueueInfo_v1(const ppqinfoAdmin: IMSMQQueueInfo); safecall;
    function Get_Id: OleVariant; safecall;
    function Get_CorrelationId: OleVariant; safecall;
    procedure Set_CorrelationId(pvarMsgId: OleVariant); safecall;
    function Get_Ack: Integer; safecall;
    procedure Set_Ack(plAck: Integer); safecall;
    function Get_Label_: WideString; safecall;
    procedure Set_Label_(const pbstrLabel: WideString); safecall;
    function Get_MaxTimeToReachQueue: Integer; safecall;
    procedure Set_MaxTimeToReachQueue(plMaxTimeToReachQueue: Integer); safecall;
    function Get_MaxTimeToReceive: Integer; safecall;
    procedure Set_MaxTimeToReceive(plMaxTimeToReceive: Integer); safecall;
    function Get_HashAlgorithm: Integer; safecall;
    procedure Set_HashAlgorithm(plHashAlg: Integer); safecall;
    function Get_EncryptAlgorithm: Integer; safecall;
    procedure Set_EncryptAlgorithm(plEncryptAlg: Integer); safecall;
    function Get_SentTime: OleVariant; safecall;
    function Get_ArrivedTime: OleVariant; safecall;
    function Get_DestinationQueueInfo: IMSMQQueueInfo3; safecall;
    function Get_SenderCertificate: OleVariant; safecall;
    procedure Set_SenderCertificate(pvarSenderCert: OleVariant); safecall;
    function Get_SenderId: OleVariant; safecall;
    function Get_SenderIdType: Integer; safecall;
    procedure Set_SenderIdType(plSenderIdType: Integer); safecall;
    procedure Send(const DestinationQueue: IDispatch; var Transaction: OleVariant); safecall;
    procedure AttachCurrentSecurityContext; safecall;
    function Get_SenderVersion: Integer; safecall;
    function Get_Extension: OleVariant; safecall;
    procedure Set_Extension(pvarExtension: OleVariant); safecall;
    function Get_ConnectorTypeGuid: WideString; safecall;
    procedure Set_ConnectorTypeGuid(const pbstrGuidConnectorType: WideString); safecall;
    function Get_TransactionStatusQueueInfo: IMSMQQueueInfo3; safecall;
    function Get_DestinationSymmetricKey: OleVariant; safecall;
    procedure Set_DestinationSymmetricKey(pvarDestSymmKey: OleVariant); safecall;
    function Get_Signature: OleVariant; safecall;
    procedure Set_Signature(pvarSignature: OleVariant); safecall;
    function Get_AuthenticationProviderType: Integer; safecall;
    procedure Set_AuthenticationProviderType(plAuthProvType: Integer); safecall;
    function Get_AuthenticationProviderName: WideString; safecall;
    procedure Set_AuthenticationProviderName(const pbstrAuthProvName: WideString); safecall;
    procedure Set_SenderId(pvarSenderId: OleVariant); safecall;
    function Get_MsgClass: Integer; safecall;
    procedure Set_MsgClass(plMsgClass: Integer); safecall;
    function Get_Properties: IDispatch; safecall;
    function Get_TransactionId: OleVariant; safecall;
    function Get_IsFirstInTransaction: Smallint; safecall;
    function Get_IsLastInTransaction: Smallint; safecall;
    function Get_ResponseQueueInfo_v2: IMSMQQueueInfo2; safecall;
    procedure _Set_ResponseQueueInfo_v2(const ppqinfoResponse: IMSMQQueueInfo2); safecall;
    function Get_AdminQueueInfo_v2: IMSMQQueueInfo2; safecall;
    procedure _Set_AdminQueueInfo_v2(const ppqinfoAdmin: IMSMQQueueInfo2); safecall;
    function Get_ReceivedAuthenticationLevel: Smallint; safecall;
    function Get_ResponseQueueInfo: IMSMQQueueInfo3; safecall;
    procedure _Set_ResponseQueueInfo(const ppqinfoResponse: IMSMQQueueInfo3); safecall;
    function Get_AdminQueueInfo: IMSMQQueueInfo3; safecall;
    procedure _Set_AdminQueueInfo(const ppqinfoAdmin: IMSMQQueueInfo3); safecall;
    function Get_ResponseDestination: IDispatch; safecall;
    procedure _Set_ResponseDestination(const ppdestResponse: IDispatch); safecall;
    function Get_Destination: IDispatch; safecall;
    function Get_LookupId: OleVariant; safecall;
    function Get_IsAuthenticated2: WordBool; safecall;
    function Get_IsFirstInTransaction2: WordBool; safecall;
    function Get_IsLastInTransaction2: WordBool; safecall;
    procedure AttachCurrentSecurityContext2; safecall;
    function Get_SoapEnvelope: WideString; safecall;
    function Get_CompoundMessage: OleVariant; safecall;
    procedure Set_SoapHeader(const Param1: WideString); safecall;
    procedure Set_SoapBody(const Param1: WideString); safecall;
    property Class_: Integer read Get_Class_;
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property AuthLevel: Integer read Get_AuthLevel write Set_AuthLevel;
    property IsAuthenticated: Smallint read Get_IsAuthenticated;
    property Delivery: Integer read Get_Delivery write Set_Delivery;
    property Trace: Integer read Get_Trace write Set_Trace;
    property Priority: Integer read Get_Priority write Set_Priority;
    property Journal: Integer read Get_Journal write Set_Journal;
    property ResponseQueueInfo_v1: IMSMQQueueInfo read Get_ResponseQueueInfo_v1 write _Set_ResponseQueueInfo_v1;
    property AppSpecific: Integer read Get_AppSpecific write Set_AppSpecific;
    property SourceMachineGuid: WideString read Get_SourceMachineGuid;
    property BodyLength: Integer read Get_BodyLength;
    property Body: OleVariant read Get_Body write Set_Body;
    property AdminQueueInfo_v1: IMSMQQueueInfo read Get_AdminQueueInfo_v1 write _Set_AdminQueueInfo_v1;
    property Id: OleVariant read Get_Id;
    property CorrelationId: OleVariant read Get_CorrelationId write Set_CorrelationId;
    property Ack: Integer read Get_Ack write Set_Ack;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property MaxTimeToReachQueue: Integer read Get_MaxTimeToReachQueue write Set_MaxTimeToReachQueue;
    property MaxTimeToReceive: Integer read Get_MaxTimeToReceive write Set_MaxTimeToReceive;
    property HashAlgorithm: Integer read Get_HashAlgorithm write Set_HashAlgorithm;
    property EncryptAlgorithm: Integer read Get_EncryptAlgorithm write Set_EncryptAlgorithm;
    property SentTime: OleVariant read Get_SentTime;
    property ArrivedTime: OleVariant read Get_ArrivedTime;
    property DestinationQueueInfo: IMSMQQueueInfo3 read Get_DestinationQueueInfo;
    property SenderCertificate: OleVariant read Get_SenderCertificate write Set_SenderCertificate;
    property SenderId: OleVariant read Get_SenderId write Set_SenderId;
    property SenderIdType: Integer read Get_SenderIdType write Set_SenderIdType;
    property SenderVersion: Integer read Get_SenderVersion;
    property Extension: OleVariant read Get_Extension write Set_Extension;
    property ConnectorTypeGuid: WideString read Get_ConnectorTypeGuid write Set_ConnectorTypeGuid;
    property TransactionStatusQueueInfo: IMSMQQueueInfo3 read Get_TransactionStatusQueueInfo;
    property DestinationSymmetricKey: OleVariant read Get_DestinationSymmetricKey write Set_DestinationSymmetricKey;
    property Signature: OleVariant read Get_Signature write Set_Signature;
    property AuthenticationProviderType: Integer read Get_AuthenticationProviderType write Set_AuthenticationProviderType;
    property AuthenticationProviderName: WideString read Get_AuthenticationProviderName write Set_AuthenticationProviderName;
    property MsgClass: Integer read Get_MsgClass write Set_MsgClass;
    property Properties: IDispatch read Get_Properties;
    property TransactionId: OleVariant read Get_TransactionId;
    property IsFirstInTransaction: Smallint read Get_IsFirstInTransaction;
    property IsLastInTransaction: Smallint read Get_IsLastInTransaction;
    property ResponseQueueInfo_v2: IMSMQQueueInfo2 read Get_ResponseQueueInfo_v2 write _Set_ResponseQueueInfo_v2;
    property AdminQueueInfo_v2: IMSMQQueueInfo2 read Get_AdminQueueInfo_v2 write _Set_AdminQueueInfo_v2;
    property ReceivedAuthenticationLevel: Smallint read Get_ReceivedAuthenticationLevel;
    property ResponseQueueInfo: IMSMQQueueInfo3 read Get_ResponseQueueInfo write _Set_ResponseQueueInfo;
    property AdminQueueInfo: IMSMQQueueInfo3 read Get_AdminQueueInfo write _Set_AdminQueueInfo;
    property ResponseDestination: IDispatch read Get_ResponseDestination write _Set_ResponseDestination;
    property Destination: IDispatch read Get_Destination;
    property LookupId: OleVariant read Get_LookupId;
    property IsAuthenticated2: WordBool read Get_IsAuthenticated2;
    property IsFirstInTransaction2: WordBool read Get_IsFirstInTransaction2;
    property IsLastInTransaction2: WordBool read Get_IsLastInTransaction2;
    property SoapEnvelope: WideString read Get_SoapEnvelope;
    property CompoundMessage: OleVariant read Get_CompoundMessage;
    property SoapHeader: WideString write Set_SoapHeader;
    property SoapBody: WideString write Set_SoapBody;
  end;

// *********************************************************************//
// DispIntf:  IMSMQMessage3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1A-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQMessage3Disp = dispinterface
    ['{EBA96B1A-2168-11D3-898C-00E02C074F6B}']
    property Class_: Integer readonly dispid 7;
    property PrivLevel: Integer dispid 25;
    property AuthLevel: Integer dispid 26;
    property IsAuthenticated: Smallint readonly dispid 27;
    property Delivery: Integer dispid 1;
    property Trace: Integer dispid 24;
    property Priority: Integer dispid 2;
    property Journal: Integer dispid 3;
    property ResponseQueueInfo_v1: IMSMQQueueInfo dispid 4;
    property AppSpecific: Integer dispid 5;
    property SourceMachineGuid: WideString readonly dispid 6;
    property BodyLength: Integer readonly dispid 13;
    property Body: OleVariant dispid 0;
    property AdminQueueInfo_v1: IMSMQQueueInfo dispid 8;
    property Id: OleVariant readonly dispid 9;
    property CorrelationId: OleVariant dispid 10;
    property Ack: Integer dispid 11;
    property Label_: WideString dispid 12;
    property MaxTimeToReachQueue: Integer dispid 14;
    property MaxTimeToReceive: Integer dispid 15;
    property HashAlgorithm: Integer dispid 17;
    property EncryptAlgorithm: Integer dispid 16;
    property SentTime: OleVariant readonly dispid 18;
    property ArrivedTime: OleVariant readonly dispid 19;
    property DestinationQueueInfo: IMSMQQueueInfo3 readonly dispid 20;
    property SenderCertificate: OleVariant dispid 21;
    property SenderId: OleVariant dispid 22;
    property SenderIdType: Integer dispid 23;
    procedure Send(const DestinationQueue: IDispatch; var Transaction: OleVariant); dispid 1610743855;
    procedure AttachCurrentSecurityContext; dispid 1610743856;
    property SenderVersion: Integer readonly dispid 28;
    property Extension: OleVariant dispid 29;
    property ConnectorTypeGuid: WideString dispid 30;
    property TransactionStatusQueueInfo: IMSMQQueueInfo3 readonly dispid 31;
    property DestinationSymmetricKey: OleVariant dispid 32;
    property Signature: OleVariant dispid 33;
    property AuthenticationProviderType: Integer dispid 34;
    property AuthenticationProviderName: WideString dispid 35;
    property MsgClass: Integer dispid 36;
    property Properties: IDispatch readonly dispid 37;
    property TransactionId: OleVariant readonly dispid 38;
    property IsFirstInTransaction: Smallint readonly dispid 39;
    property IsLastInTransaction: Smallint readonly dispid 40;
    property ResponseQueueInfo_v2: IMSMQQueueInfo2 dispid 41;
    property AdminQueueInfo_v2: IMSMQQueueInfo2 dispid 42;
    property ReceivedAuthenticationLevel: Smallint readonly dispid 43;
    property ResponseQueueInfo: IMSMQQueueInfo3 dispid 44;
    property AdminQueueInfo: IMSMQQueueInfo3 dispid 45;
    property ResponseDestination: IDispatch dispid 46;
    property Destination: IDispatch readonly dispid 48;
    property LookupId: OleVariant readonly dispid 49;
    property IsAuthenticated2: WordBool readonly dispid 50;
    property IsFirstInTransaction2: WordBool readonly dispid 51;
    property IsLastInTransaction2: WordBool readonly dispid 52;
    procedure AttachCurrentSecurityContext2; dispid 1610743894;
    property SoapEnvelope: WideString readonly dispid 53;
    property CompoundMessage: OleVariant readonly dispid 54;
    property SoapHeader: WideString writeonly dispid 55;
    property SoapBody: WideString writeonly dispid 56;
  end;

// *********************************************************************//
// Interface: IMSMQQueueInfos2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B0F-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQueueInfos2 = interface(IDispatch)
    ['{EBA96B0F-2168-11D3-898C-00E02C074F6B}']
    procedure Reset; safecall;
    function Next: IMSMQQueueInfo2; safecall;
    function Get_Properties: IDispatch; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueueInfos2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B0F-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQueueInfos2Disp = dispinterface
    ['{EBA96B0F-2168-11D3-898C-00E02C074F6B}']
    procedure Reset; dispid 1610743808;
    function Next: IMSMQQueueInfo2; dispid 1610743809;
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQQueueInfos3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1E-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQueueInfos3 = interface(IDispatch)
    ['{EBA96B1E-2168-11D3-898C-00E02C074F6B}']
    procedure Reset; safecall;
    function Next: IMSMQQueueInfo3; safecall;
    function Get_Properties: IDispatch; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueueInfos3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1E-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQueueInfos3Disp = dispinterface
    ['{EBA96B1E-2168-11D3-898C-00E02C074F6B}']
    procedure Reset; dispid 1610743808;
    function Next: IMSMQQueueInfo3; dispid 1610743809;
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQTransaction
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E07F-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQTransaction = interface(IDispatch)
    ['{D7D6E07F-DCCD-11D0-AA4B-0060970DEBAE}']
    function Get_Transaction: Integer; safecall;
    procedure Commit(var fRetaining: OleVariant; var grfTC: OleVariant; var grfRM: OleVariant); safecall;
    procedure Abort(var fRetaining: OleVariant; var fAsync: OleVariant); safecall;
    property Transaction: Integer read Get_Transaction;
  end;

// *********************************************************************//
// DispIntf:  IMSMQTransactionDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E07F-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQTransactionDisp = dispinterface
    ['{D7D6E07F-DCCD-11D0-AA4B-0060970DEBAE}']
    property Transaction: Integer readonly dispid 0;
    procedure Commit(var fRetaining: OleVariant; var grfTC: OleVariant; var grfRM: OleVariant); dispid 1610743809;
    procedure Abort(var fRetaining: OleVariant; var fAsync: OleVariant); dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IMSMQCoordinatedTransactionDispenser
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E081-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQCoordinatedTransactionDispenser = interface(IDispatch)
    ['{D7D6E081-DCCD-11D0-AA4B-0060970DEBAE}']
    function BeginTransaction: IMSMQTransaction; safecall;
  end;

// *********************************************************************//
// DispIntf:  IMSMQCoordinatedTransactionDispenserDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E081-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQCoordinatedTransactionDispenserDisp = dispinterface
    ['{D7D6E081-DCCD-11D0-AA4B-0060970DEBAE}']
    function BeginTransaction: IMSMQTransaction; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IMSMQTransactionDispenser
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E083-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQTransactionDispenser = interface(IDispatch)
    ['{D7D6E083-DCCD-11D0-AA4B-0060970DEBAE}']
    function BeginTransaction: IMSMQTransaction; safecall;
  end;

// *********************************************************************//
// DispIntf:  IMSMQTransactionDispenserDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E083-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQTransactionDispenserDisp = dispinterface
    ['{D7D6E083-DCCD-11D0-AA4B-0060970DEBAE}']
    function BeginTransaction: IMSMQTransaction; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IMSMQQuery2
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EBA96B0E-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQuery2 = interface(IDispatch)
    ['{EBA96B0E-2168-11D3-898C-00E02C074F6B}']
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                         var RelModifyTime: OleVariant): IMSMQQueueInfos2; safecall;
    function Get_Properties: IDispatch; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQuery2Disp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EBA96B0E-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQuery2Disp = dispinterface
    ['{EBA96B0E-2168-11D3-898C-00E02C074F6B}']
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                         var RelModifyTime: OleVariant): IMSMQQueueInfos2; dispid 1610743808;
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQQuery3
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EBA96B19-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQuery3 = interface(IDispatch)
    ['{EBA96B19-2168-11D3-898C-00E02C074F6B}']
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                            var Label_: OleVariant; var CreateTime: OleVariant; 
                            var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                            var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                            var RelModifyTime: OleVariant): IMSMQQueueInfos3; safecall;
    function Get_Properties: IDispatch; safecall;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                         var RelModifyTime: OleVariant; var MulticastAddress: OleVariant; 
                         var RelMulticastAddress: OleVariant): IMSMQQueueInfos3; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQuery3Disp
// Flags:     (4560) Hidden Dual NonExtensible OleAutomation Dispatchable
// GUID:      {EBA96B19-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQQuery3Disp = dispinterface
    ['{EBA96B19-2168-11D3-898C-00E02C074F6B}']
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                            var Label_: OleVariant; var CreateTime: OleVariant; 
                            var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                            var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                            var RelModifyTime: OleVariant): IMSMQQueueInfos3; dispid 1610743808;
    property Properties: IDispatch readonly dispid 0;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                         var RelModifyTime: OleVariant; var MulticastAddress: OleVariant; 
                         var RelMulticastAddress: OleVariant): IMSMQQueueInfos3; dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IMSMQPrivateEvent
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7AB3341-C9D3-11D1-BB47-0080C7C5A2C0}
// *********************************************************************//
  IMSMQPrivateEvent = interface(IDispatch)
    ['{D7AB3341-C9D3-11D1-BB47-0080C7C5A2C0}']
    function Get_Hwnd: Integer; safecall;
    procedure FireArrivedEvent(const pq: IMSMQQueue; msgcursor: Integer); safecall;
    procedure FireArrivedErrorEvent(const pq: IMSMQQueue; hrStatus: HResult; msgcursor: Integer); safecall;
    property Hwnd: Integer read Get_Hwnd;
  end;

// *********************************************************************//
// DispIntf:  IMSMQPrivateEventDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7AB3341-C9D3-11D1-BB47-0080C7C5A2C0}
// *********************************************************************//
  IMSMQPrivateEventDisp = dispinterface
    ['{D7AB3341-C9D3-11D1-BB47-0080C7C5A2C0}']
    property Hwnd: Integer readonly dispid 1610743808;
    procedure FireArrivedEvent(const pq: IMSMQQueue; msgcursor: Integer); dispid 1610743809;
    procedure FireArrivedErrorEvent(const pq: IMSMQQueue; hrStatus: HResult; msgcursor: Integer); dispid 1610743810;
  end;

// *********************************************************************//
// DispIntf:  _DMSMQEventEvents
// Flags:     (4112) Hidden Dispatchable
// GUID:      {D7D6E078-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  _DMSMQEventEvents = dispinterface
    ['{D7D6E078-DCCD-11D0-AA4B-0060970DEBAE}']
    procedure Arrived(const Queue: IDispatch; Cursor: Integer); dispid 0;
    procedure ArrivedError(const Queue: IDispatch; ErrorCode: Integer; Cursor: Integer); dispid 1;
  end;

// *********************************************************************//
// Interface: IMSMQTransaction2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2CE0C5B0-6E67-11D2-B0E6-00E02C074F6B}
// *********************************************************************//
  IMSMQTransaction2 = interface(IMSMQTransaction)
    ['{2CE0C5B0-6E67-11D2-B0E6-00E02C074F6B}']
    procedure InitNew(varTransaction: OleVariant); safecall;
    function Get_Properties: IDispatch; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQTransaction2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {2CE0C5B0-6E67-11D2-B0E6-00E02C074F6B}
// *********************************************************************//
  IMSMQTransaction2Disp = dispinterface
    ['{2CE0C5B0-6E67-11D2-B0E6-00E02C074F6B}']
    procedure InitNew(varTransaction: OleVariant); dispid 1610809344;
    property Properties: IDispatch readonly dispid 1;
    property Transaction: Integer readonly dispid 0;
    procedure Commit(var fRetaining: OleVariant; var grfTC: OleVariant; var grfRM: OleVariant); dispid 1610743809;
    procedure Abort(var fRetaining: OleVariant; var fAsync: OleVariant); dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IMSMQTransaction3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B13-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQTransaction3 = interface(IMSMQTransaction2)
    ['{EBA96B13-2168-11D3-898C-00E02C074F6B}']
    function Get_ITransaction: OleVariant; safecall;
    property ITransaction: OleVariant read Get_ITransaction;
  end;

// *********************************************************************//
// DispIntf:  IMSMQTransaction3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B13-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQTransaction3Disp = dispinterface
    ['{EBA96B13-2168-11D3-898C-00E02C074F6B}']
    property ITransaction: OleVariant readonly dispid 2;
    procedure InitNew(varTransaction: OleVariant); dispid 1610809344;
    property Properties: IDispatch readonly dispid 1;
    property Transaction: Integer readonly dispid 0;
    procedure Commit(var fRetaining: OleVariant; var grfTC: OleVariant; var grfRM: OleVariant); dispid 1610743809;
    procedure Abort(var fRetaining: OleVariant; var fAsync: OleVariant); dispid 1610743810;
  end;

// *********************************************************************//
// Interface: IMSMQCoordinatedTransactionDispenser2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B10-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQCoordinatedTransactionDispenser2 = interface(IDispatch)
    ['{EBA96B10-2168-11D3-898C-00E02C074F6B}']
    function BeginTransaction: IMSMQTransaction2; safecall;
    function Get_Properties: IDispatch; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQCoordinatedTransactionDispenser2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B10-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQCoordinatedTransactionDispenser2Disp = dispinterface
    ['{EBA96B10-2168-11D3-898C-00E02C074F6B}']
    function BeginTransaction: IMSMQTransaction2; dispid 1610743808;
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQCoordinatedTransactionDispenser3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B14-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQCoordinatedTransactionDispenser3 = interface(IDispatch)
    ['{EBA96B14-2168-11D3-898C-00E02C074F6B}']
    function BeginTransaction: IMSMQTransaction3; safecall;
    function Get_Properties: IDispatch; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQCoordinatedTransactionDispenser3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B14-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQCoordinatedTransactionDispenser3Disp = dispinterface
    ['{EBA96B14-2168-11D3-898C-00E02C074F6B}']
    function BeginTransaction: IMSMQTransaction3; dispid 1610743808;
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQTransactionDispenser2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B11-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQTransactionDispenser2 = interface(IDispatch)
    ['{EBA96B11-2168-11D3-898C-00E02C074F6B}']
    function BeginTransaction: IMSMQTransaction2; safecall;
    function Get_Properties: IDispatch; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQTransactionDispenser2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B11-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQTransactionDispenser2Disp = dispinterface
    ['{EBA96B11-2168-11D3-898C-00E02C074F6B}']
    function BeginTransaction: IMSMQTransaction2; dispid 1610743808;
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQTransactionDispenser3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B15-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQTransactionDispenser3 = interface(IDispatch)
    ['{EBA96B15-2168-11D3-898C-00E02C074F6B}']
    function BeginTransaction: IMSMQTransaction3; safecall;
    function Get_Properties: IDispatch; safecall;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQTransactionDispenser3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B15-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQTransactionDispenser3Disp = dispinterface
    ['{EBA96B15-2168-11D3-898C-00E02C074F6B}']
    function BeginTransaction: IMSMQTransaction3; dispid 1610743808;
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQApplication
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E085-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQApplication = interface(IDispatch)
    ['{D7D6E085-DCCD-11D0-AA4B-0060970DEBAE}']
    function MachineIdOfMachineName(const MachineName: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IMSMQApplicationDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D7D6E085-DCCD-11D0-AA4B-0060970DEBAE}
// *********************************************************************//
  IMSMQApplicationDisp = dispinterface
    ['{D7D6E085-DCCD-11D0-AA4B-0060970DEBAE}']
    function MachineIdOfMachineName(const MachineName: WideString): WideString; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IMSMQApplication2
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {12A30900-7300-11D2-B0E6-00E02C074F6B}
// *********************************************************************//
  IMSMQApplication2 = interface(IMSMQApplication)
    ['{12A30900-7300-11D2-B0E6-00E02C074F6B}']
    procedure RegisterCertificate(var Flags: OleVariant; var ExternalCertificate: OleVariant); safecall;
    function MachineNameOfMachineId(const bstrGuid: WideString): WideString; safecall;
    function Get_MSMQVersionMajor: Smallint; safecall;
    function Get_MSMQVersionMinor: Smallint; safecall;
    function Get_MSMQVersionBuild: Smallint; safecall;
    function Get_IsDsEnabled: WordBool; safecall;
    function Get_Properties: IDispatch; safecall;
    property MSMQVersionMajor: Smallint read Get_MSMQVersionMajor;
    property MSMQVersionMinor: Smallint read Get_MSMQVersionMinor;
    property MSMQVersionBuild: Smallint read Get_MSMQVersionBuild;
    property IsDsEnabled: WordBool read Get_IsDsEnabled;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQApplication2Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {12A30900-7300-11D2-B0E6-00E02C074F6B}
// *********************************************************************//
  IMSMQApplication2Disp = dispinterface
    ['{12A30900-7300-11D2-B0E6-00E02C074F6B}']
    procedure RegisterCertificate(var Flags: OleVariant; var ExternalCertificate: OleVariant); dispid 1610809344;
    function MachineNameOfMachineId(const bstrGuid: WideString): WideString; dispid 1610809345;
    property MSMQVersionMajor: Smallint readonly dispid 1;
    property MSMQVersionMinor: Smallint readonly dispid 2;
    property MSMQVersionBuild: Smallint readonly dispid 3;
    property IsDsEnabled: WordBool readonly dispid 4;
    property Properties: IDispatch readonly dispid 0;
    function MachineIdOfMachineName(const MachineName: WideString): WideString; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IMSMQApplication3
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1F-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQApplication3 = interface(IMSMQApplication2)
    ['{EBA96B1F-2168-11D3-898C-00E02C074F6B}']
    function Get_ActiveQueues: OleVariant; safecall;
    function Get_PrivateQueues: OleVariant; safecall;
    function Get_DirectoryServiceServer: WideString; safecall;
    function Get_IsConnected: WordBool; safecall;
    function Get_BytesInAllQueues: OleVariant; safecall;
    procedure Set_Machine(const pbstrMachine: WideString); safecall;
    function Get_Machine: WideString; safecall;
    procedure Connect; safecall;
    procedure Disconnect; safecall;
    procedure Tidy; safecall;
    property ActiveQueues: OleVariant read Get_ActiveQueues;
    property PrivateQueues: OleVariant read Get_PrivateQueues;
    property DirectoryServiceServer: WideString read Get_DirectoryServiceServer;
    property IsConnected: WordBool read Get_IsConnected;
    property BytesInAllQueues: OleVariant read Get_BytesInAllQueues;
    property Machine: WideString read Get_Machine write Set_Machine;
  end;

// *********************************************************************//
// DispIntf:  IMSMQApplication3Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B1F-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQApplication3Disp = dispinterface
    ['{EBA96B1F-2168-11D3-898C-00E02C074F6B}']
    property ActiveQueues: OleVariant readonly dispid 5;
    property PrivateQueues: OleVariant readonly dispid 6;
    property DirectoryServiceServer: WideString readonly dispid 7;
    property IsConnected: WordBool readonly dispid 8;
    property BytesInAllQueues: OleVariant readonly dispid 9;
    property Machine: WideString dispid 10;
    procedure Connect; dispid 1610874887;
    procedure Disconnect; dispid 1610874888;
    procedure Tidy; dispid 1610874889;
    procedure RegisterCertificate(var Flags: OleVariant; var ExternalCertificate: OleVariant); dispid 1610809344;
    function MachineNameOfMachineId(const bstrGuid: WideString): WideString; dispid 1610809345;
    property MSMQVersionMajor: Smallint readonly dispid 1;
    property MSMQVersionMinor: Smallint readonly dispid 2;
    property MSMQVersionBuild: Smallint readonly dispid 3;
    property IsDsEnabled: WordBool readonly dispid 4;
    property Properties: IDispatch readonly dispid 0;
    function MachineIdOfMachineName(const MachineName: WideString): WideString; dispid 1610743808;
  end;

// *********************************************************************//
// Interface: IMSMQDestination
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B16-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQDestination = interface(IDispatch)
    ['{EBA96B16-2168-11D3-898C-00E02C074F6B}']
    procedure Open; safecall;
    procedure Close; safecall;
    function Get_IsOpen: WordBool; safecall;
    function Get_IADs: IDispatch; safecall;
    procedure _Set_IADs(const ppIADs: IDispatch); safecall;
    function Get_ADsPath: WideString; safecall;
    procedure Set_ADsPath(const pbstrADsPath: WideString); safecall;
    function Get_PathName: WideString; safecall;
    procedure Set_PathName(const pbstrPathName: WideString); safecall;
    function Get_FormatName: WideString; safecall;
    procedure Set_FormatName(const pbstrFormatName: WideString); safecall;
    function Get_Destinations: IDispatch; safecall;
    procedure _Set_Destinations(const ppDestinations: IDispatch); safecall;
    function Get_Properties: IDispatch; safecall;
    property IsOpen: WordBool read Get_IsOpen;
    property IADs: IDispatch read Get_IADs write _Set_IADs;
    property ADsPath: WideString read Get_ADsPath write Set_ADsPath;
    property PathName: WideString read Get_PathName write Set_PathName;
    property FormatName: WideString read Get_FormatName write Set_FormatName;
    property Destinations: IDispatch read Get_Destinations write _Set_Destinations;
    property Properties: IDispatch read Get_Properties;
  end;

// *********************************************************************//
// DispIntf:  IMSMQDestinationDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B16-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQDestinationDisp = dispinterface
    ['{EBA96B16-2168-11D3-898C-00E02C074F6B}']
    procedure Open; dispid 1610743808;
    procedure Close; dispid 1610743809;
    property IsOpen: WordBool readonly dispid 1;
    property IADs: IDispatch dispid 2;
    property ADsPath: WideString dispid 3;
    property PathName: WideString dispid 4;
    property FormatName: WideString dispid 5;
    property Destinations: IDispatch dispid 6;
    property Properties: IDispatch readonly dispid 0;
  end;

// *********************************************************************//
// Interface: IMSMQPrivateDestination
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B17-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQPrivateDestination = interface(IDispatch)
    ['{EBA96B17-2168-11D3-898C-00E02C074F6B}']
    function Get_Handle: OleVariant; safecall;
    procedure Set_Handle(pvarHandle: OleVariant); safecall;
    property Handle: OleVariant read Get_Handle write Set_Handle;
  end;

// *********************************************************************//
// DispIntf:  IMSMQPrivateDestinationDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {EBA96B17-2168-11D3-898C-00E02C074F6B}
// *********************************************************************//
  IMSMQPrivateDestinationDisp = dispinterface
    ['{EBA96B17-2168-11D3-898C-00E02C074F6B}']
    property Handle: OleVariant dispid 7;
  end;

// *********************************************************************//
// Interface: IMSMQCollection
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0188AC2F-ECB3-4173-9779-635CA2039C72}
// *********************************************************************//
  IMSMQCollection = interface(IDispatch)
    ['{0188AC2F-ECB3-4173-9779-635CA2039C72}']
    function Item(var Index: OleVariant): OleVariant; safecall;
    function Get_Count: Integer; safecall;
    function _NewEnum: IUnknown; safecall;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  IMSMQCollectionDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0188AC2F-ECB3-4173-9779-635CA2039C72}
// *********************************************************************//
  IMSMQCollectionDisp = dispinterface
    ['{0188AC2F-ECB3-4173-9779-635CA2039C72}']
    function Item(var Index: OleVariant): OleVariant; dispid 0;
    property Count: Integer readonly dispid 1;
    function _NewEnum: IUnknown; dispid -4;
  end;

// *********************************************************************//
// Interface: IMSMQManagement
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BE5F0241-E489-4957-8CC4-A452FCF3E23E}
// *********************************************************************//
  IMSMQManagement = interface(IDispatch)
    ['{BE5F0241-E489-4957-8CC4-A452FCF3E23E}']
    procedure Init(var Machine: OleVariant; var PathName: OleVariant; var FormatName: OleVariant); safecall;
    function Get_FormatName: WideString; safecall;
    function Get_Machine: WideString; safecall;
    function Get_MessageCount: Integer; safecall;
    function Get_ForeignStatus: Integer; safecall;
    function Get_QueueType: Integer; safecall;
    function Get_IsLocal: WordBool; safecall;
    function Get_TransactionalStatus: Integer; safecall;
    function Get_BytesInQueue: OleVariant; safecall;
    property FormatName: WideString read Get_FormatName;
    property Machine: WideString read Get_Machine;
    property MessageCount: Integer read Get_MessageCount;
    property ForeignStatus: Integer read Get_ForeignStatus;
    property QueueType: Integer read Get_QueueType;
    property IsLocal: WordBool read Get_IsLocal;
    property TransactionalStatus: Integer read Get_TransactionalStatus;
    property BytesInQueue: OleVariant read Get_BytesInQueue;
  end;

// *********************************************************************//
// DispIntf:  IMSMQManagementDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BE5F0241-E489-4957-8CC4-A452FCF3E23E}
// *********************************************************************//
  IMSMQManagementDisp = dispinterface
    ['{BE5F0241-E489-4957-8CC4-A452FCF3E23E}']
    procedure Init(var Machine: OleVariant; var PathName: OleVariant; var FormatName: OleVariant); dispid 0;
    property FormatName: WideString readonly dispid 1;
    property Machine: WideString readonly dispid 2;
    property MessageCount: Integer readonly dispid 3;
    property ForeignStatus: Integer readonly dispid 4;
    property QueueType: Integer readonly dispid 5;
    property IsLocal: WordBool readonly dispid 6;
    property TransactionalStatus: Integer readonly dispid 7;
    property BytesInQueue: OleVariant readonly dispid 8;
  end;

// *********************************************************************//
// Interface: IMSMQOutgoingQueueManagement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {64C478FB-F9B0-4695-8A7F-439AC94326D3}
// *********************************************************************//
  IMSMQOutgoingQueueManagement = interface(IMSMQManagement)
    ['{64C478FB-F9B0-4695-8A7F-439AC94326D3}']
    function Get_State: Integer; safecall;
    function Get_NextHops: OleVariant; safecall;
    function EodGetSendInfo: IMSMQCollection; safecall;
    procedure Resume; safecall;
    procedure Pause; safecall;
    procedure EodResend; safecall;
    property State: Integer read Get_State;
    property NextHops: OleVariant read Get_NextHops;
  end;

// *********************************************************************//
// DispIntf:  IMSMQOutgoingQueueManagementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {64C478FB-F9B0-4695-8A7F-439AC94326D3}
// *********************************************************************//
  IMSMQOutgoingQueueManagementDisp = dispinterface
    ['{64C478FB-F9B0-4695-8A7F-439AC94326D3}']
    property State: Integer readonly dispid 1610809344;
    property NextHops: OleVariant readonly dispid 1610809345;
    function EodGetSendInfo: IMSMQCollection; dispid 1610809346;
    procedure Resume; dispid 1610809347;
    procedure Pause; dispid 1610809348;
    procedure EodResend; dispid 1610809349;
    procedure Init(var Machine: OleVariant; var PathName: OleVariant; var FormatName: OleVariant); dispid 0;
    property FormatName: WideString readonly dispid 1;
    property Machine: WideString readonly dispid 2;
    property MessageCount: Integer readonly dispid 3;
    property ForeignStatus: Integer readonly dispid 4;
    property QueueType: Integer readonly dispid 5;
    property IsLocal: WordBool readonly dispid 6;
    property TransactionalStatus: Integer readonly dispid 7;
    property BytesInQueue: OleVariant readonly dispid 8;
  end;

// *********************************************************************//
// Interface: IMSMQQueueManagement
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7FBE7759-5760-444D-B8A5-5E7AB9A84CCE}
// *********************************************************************//
  IMSMQQueueManagement = interface(IMSMQManagement)
    ['{7FBE7759-5760-444D-B8A5-5E7AB9A84CCE}']
    function Get_JournalMessageCount: Integer; safecall;
    function Get_BytesInJournal: OleVariant; safecall;
    function EodGetReceiveInfo: OleVariant; safecall;
    property JournalMessageCount: Integer read Get_JournalMessageCount;
    property BytesInJournal: OleVariant read Get_BytesInJournal;
  end;

// *********************************************************************//
// DispIntf:  IMSMQQueueManagementDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7FBE7759-5760-444D-B8A5-5E7AB9A84CCE}
// *********************************************************************//
  IMSMQQueueManagementDisp = dispinterface
    ['{7FBE7759-5760-444D-B8A5-5E7AB9A84CCE}']
    property JournalMessageCount: Integer readonly dispid 1610809344;
    property BytesInJournal: OleVariant readonly dispid 1610809345;
    function EodGetReceiveInfo: OleVariant; dispid 1610809346;
    procedure Init(var Machine: OleVariant; var PathName: OleVariant; var FormatName: OleVariant); dispid 0;
    property FormatName: WideString readonly dispid 1;
    property Machine: WideString readonly dispid 2;
    property MessageCount: Integer readonly dispid 3;
    property ForeignStatus: Integer readonly dispid 4;
    property QueueType: Integer readonly dispid 5;
    property IsLocal: WordBool readonly dispid 6;
    property TransactionalStatus: Integer readonly dispid 7;
    property BytesInQueue: OleVariant readonly dispid 8;
  end;

// *********************************************************************//
// The Class CoMSMQQuery provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQQuery3 exposed by              
// the CoClass MSMQQuery. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQQuery = class
    class function Create: IMSMQQuery3;
    class function CreateRemote(const MachineName: string): IMSMQQuery3;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQQuery
// Help String      : 
// Default Interface: IMSMQQuery3
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQQueryProperties= class;
{$ENDIF}
  TMSMQQuery = class(TOleServer)
  private
    FIntf:        IMSMQQuery3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQQueryProperties;
    function      GetServerProperties: TMSMQQueryProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQQuery3;
  protected
    procedure InitServerData; override;
    function Get_Properties: IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQQuery3);
    procedure Disconnect; override;
    function LookupQueue_v2: IMSMQQueueInfos3; overload;
    function LookupQueue_v2(var QueueGuid: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                            var Label_: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                            var Label_: OleVariant; var CreateTime: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                            var Label_: OleVariant; var CreateTime: OleVariant; 
                            var ModifyTime: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                            var Label_: OleVariant; var CreateTime: OleVariant; 
                            var ModifyTime: OleVariant; var RelServiceType: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                            var Label_: OleVariant; var CreateTime: OleVariant; 
                            var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                            var RelLabel: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                            var Label_: OleVariant; var CreateTime: OleVariant; 
                            var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                            var RelLabel: OleVariant; var RelCreateTime: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                            var Label_: OleVariant; var CreateTime: OleVariant; 
                            var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                            var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                            var RelModifyTime: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue: IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                         var RelModifyTime: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                         var RelModifyTime: OleVariant; var MulticastAddress: OleVariant): IMSMQQueueInfos3; overload;
    function LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                         var Label_: OleVariant; var CreateTime: OleVariant; 
                         var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                         var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                         var RelModifyTime: OleVariant; var MulticastAddress: OleVariant; 
                         var RelMulticastAddress: OleVariant): IMSMQQueueInfos3; overload;
    property DefaultInterface: IMSMQQuery3 read GetDefaultInterface;
    property Properties: IDispatch read Get_Properties;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQQueryProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQQuery
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQQueryProperties = class(TPersistent)
  private
    FServer:    TMSMQQuery;
    function    GetDefaultInterface: IMSMQQuery3;
    constructor Create(AServer: TMSMQQuery);
  protected
    function Get_Properties: IDispatch;
  public
    property DefaultInterface: IMSMQQuery3 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQMessage provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQMessage3 exposed by              
// the CoClass MSMQMessage. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQMessage = class
    class function Create: IMSMQMessage3;
    class function CreateRemote(const MachineName: string): IMSMQMessage3;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQMessage
// Help String      : 
// Default Interface: IMSMQMessage3
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQMessageProperties= class;
{$ENDIF}
  TMSMQMessage = class(TOleServer)
  private
    FIntf:        IMSMQMessage3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQMessageProperties;
    function      GetServerProperties: TMSMQMessageProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQMessage3;
  protected
    procedure InitServerData; override;
    function Get_Class_: Integer;
    function Get_PrivLevel: Integer;
    procedure Set_PrivLevel(plPrivLevel: Integer);
    function Get_AuthLevel: Integer;
    procedure Set_AuthLevel(plAuthLevel: Integer);
    function Get_IsAuthenticated: Smallint;
    function Get_Delivery: Integer;
    procedure Set_Delivery(plDelivery: Integer);
    function Get_Trace: Integer;
    procedure Set_Trace(plTrace: Integer);
    function Get_Priority: Integer;
    procedure Set_Priority(plPriority: Integer);
    function Get_Journal: Integer;
    procedure Set_Journal(plJournal: Integer);
    function Get_ResponseQueueInfo_v1: IMSMQQueueInfo;
    procedure _Set_ResponseQueueInfo_v1(const ppqinfoResponse: IMSMQQueueInfo);
    function Get_AppSpecific: Integer;
    procedure Set_AppSpecific(plAppSpecific: Integer);
    function Get_SourceMachineGuid: WideString;
    function Get_BodyLength: Integer;
    function Get_Body: OleVariant;
    procedure Set_Body(pvarBody: OleVariant);
    function Get_AdminQueueInfo_v1: IMSMQQueueInfo;
    procedure _Set_AdminQueueInfo_v1(const ppqinfoAdmin: IMSMQQueueInfo);
    function Get_Id: OleVariant;
    function Get_CorrelationId: OleVariant;
    procedure Set_CorrelationId(pvarMsgId: OleVariant);
    function Get_Ack: Integer;
    procedure Set_Ack(plAck: Integer);
    function Get_Label_: WideString;
    procedure Set_Label_(const pbstrLabel: WideString);
    function Get_MaxTimeToReachQueue: Integer;
    procedure Set_MaxTimeToReachQueue(plMaxTimeToReachQueue: Integer);
    function Get_MaxTimeToReceive: Integer;
    procedure Set_MaxTimeToReceive(plMaxTimeToReceive: Integer);
    function Get_HashAlgorithm: Integer;
    procedure Set_HashAlgorithm(plHashAlg: Integer);
    function Get_EncryptAlgorithm: Integer;
    procedure Set_EncryptAlgorithm(plEncryptAlg: Integer);
    function Get_SentTime: OleVariant;
    function Get_ArrivedTime: OleVariant;
    function Get_DestinationQueueInfo: IMSMQQueueInfo3;
    function Get_SenderCertificate: OleVariant;
    procedure Set_SenderCertificate(pvarSenderCert: OleVariant);
    function Get_SenderId: OleVariant;
    function Get_SenderIdType: Integer;
    procedure Set_SenderIdType(plSenderIdType: Integer);
    function Get_SenderVersion: Integer;
    function Get_Extension: OleVariant;
    procedure Set_Extension(pvarExtension: OleVariant);
    function Get_ConnectorTypeGuid: WideString;
    procedure Set_ConnectorTypeGuid(const pbstrGuidConnectorType: WideString);
    function Get_TransactionStatusQueueInfo: IMSMQQueueInfo3;
    function Get_DestinationSymmetricKey: OleVariant;
    procedure Set_DestinationSymmetricKey(pvarDestSymmKey: OleVariant);
    function Get_Signature: OleVariant;
    procedure Set_Signature(pvarSignature: OleVariant);
    function Get_AuthenticationProviderType: Integer;
    procedure Set_AuthenticationProviderType(plAuthProvType: Integer);
    function Get_AuthenticationProviderName: WideString;
    procedure Set_AuthenticationProviderName(const pbstrAuthProvName: WideString);
    procedure Set_SenderId(pvarSenderId: OleVariant);
    function Get_MsgClass: Integer;
    procedure Set_MsgClass(plMsgClass: Integer);
    function Get_Properties: IDispatch;
    function Get_TransactionId: OleVariant;
    function Get_IsFirstInTransaction: Smallint;
    function Get_IsLastInTransaction: Smallint;
    function Get_ResponseQueueInfo_v2: IMSMQQueueInfo2;
    procedure _Set_ResponseQueueInfo_v2(const ppqinfoResponse: IMSMQQueueInfo2);
    function Get_AdminQueueInfo_v2: IMSMQQueueInfo2;
    procedure _Set_AdminQueueInfo_v2(const ppqinfoAdmin: IMSMQQueueInfo2);
    function Get_ReceivedAuthenticationLevel: Smallint;
    function Get_ResponseQueueInfo: IMSMQQueueInfo3;
    procedure _Set_ResponseQueueInfo(const ppqinfoResponse: IMSMQQueueInfo3);
    function Get_AdminQueueInfo: IMSMQQueueInfo3;
    procedure _Set_AdminQueueInfo(const ppqinfoAdmin: IMSMQQueueInfo3);
    function Get_ResponseDestination: IDispatch;
    procedure _Set_ResponseDestination(const ppdestResponse: IDispatch);
    function Get_Destination: IDispatch;
    function Get_LookupId: OleVariant;
    function Get_IsAuthenticated2: WordBool;
    function Get_IsFirstInTransaction2: WordBool;
    function Get_IsLastInTransaction2: WordBool;
    function Get_SoapEnvelope: WideString;
    function Get_CompoundMessage: OleVariant;
    procedure Set_SoapHeader(const Param1: WideString);
    procedure Set_SoapBody(const Param1: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQMessage3);
    procedure Disconnect; override;
    procedure Send(const DestinationQueue: IDispatch); overload;
    procedure Send(const DestinationQueue: IDispatch; var Transaction: OleVariant); overload;
    procedure AttachCurrentSecurityContext;
    procedure AttachCurrentSecurityContext2;
    property DefaultInterface: IMSMQMessage3 read GetDefaultInterface;
    property Class_: Integer read Get_Class_;
    property IsAuthenticated: Smallint read Get_IsAuthenticated;
    property ResponseQueueInfo_v1: IMSMQQueueInfo read Get_ResponseQueueInfo_v1 write _Set_ResponseQueueInfo_v1;
    property SourceMachineGuid: WideString read Get_SourceMachineGuid;
    property BodyLength: Integer read Get_BodyLength;
    property Body: OleVariant read Get_Body write Set_Body;
    property AdminQueueInfo_v1: IMSMQQueueInfo read Get_AdminQueueInfo_v1 write _Set_AdminQueueInfo_v1;
    property Id: OleVariant read Get_Id;
    property CorrelationId: OleVariant read Get_CorrelationId write Set_CorrelationId;
    property SentTime: OleVariant read Get_SentTime;
    property ArrivedTime: OleVariant read Get_ArrivedTime;
    property DestinationQueueInfo: IMSMQQueueInfo3 read Get_DestinationQueueInfo;
    property SenderCertificate: OleVariant read Get_SenderCertificate write Set_SenderCertificate;
    property SenderId: OleVariant read Get_SenderId write Set_SenderId;
    property SenderVersion: Integer read Get_SenderVersion;
    property Extension: OleVariant read Get_Extension write Set_Extension;
    property TransactionStatusQueueInfo: IMSMQQueueInfo3 read Get_TransactionStatusQueueInfo;
    property DestinationSymmetricKey: OleVariant read Get_DestinationSymmetricKey write Set_DestinationSymmetricKey;
    property Signature: OleVariant read Get_Signature write Set_Signature;
    property Properties: IDispatch read Get_Properties;
    property TransactionId: OleVariant read Get_TransactionId;
    property IsFirstInTransaction: Smallint read Get_IsFirstInTransaction;
    property IsLastInTransaction: Smallint read Get_IsLastInTransaction;
    property ResponseQueueInfo_v2: IMSMQQueueInfo2 read Get_ResponseQueueInfo_v2 write _Set_ResponseQueueInfo_v2;
    property AdminQueueInfo_v2: IMSMQQueueInfo2 read Get_AdminQueueInfo_v2 write _Set_AdminQueueInfo_v2;
    property ReceivedAuthenticationLevel: Smallint read Get_ReceivedAuthenticationLevel;
    property ResponseQueueInfo: IMSMQQueueInfo3 read Get_ResponseQueueInfo write _Set_ResponseQueueInfo;
    property AdminQueueInfo: IMSMQQueueInfo3 read Get_AdminQueueInfo write _Set_AdminQueueInfo;
    property ResponseDestination: IDispatch read Get_ResponseDestination write _Set_ResponseDestination;
    property Destination: IDispatch read Get_Destination;
    property LookupId: OleVariant read Get_LookupId;
    property IsAuthenticated2: WordBool read Get_IsAuthenticated2;
    property IsFirstInTransaction2: WordBool read Get_IsFirstInTransaction2;
    property IsLastInTransaction2: WordBool read Get_IsLastInTransaction2;
    property SoapEnvelope: WideString read Get_SoapEnvelope;
    property CompoundMessage: OleVariant read Get_CompoundMessage;
    property SoapHeader: WideString write Set_SoapHeader;
    property SoapBody: WideString write Set_SoapBody;
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property AuthLevel: Integer read Get_AuthLevel write Set_AuthLevel;
    property Delivery: Integer read Get_Delivery write Set_Delivery;
    property Trace: Integer read Get_Trace write Set_Trace;
    property Priority: Integer read Get_Priority write Set_Priority;
    property Journal: Integer read Get_Journal write Set_Journal;
    property AppSpecific: Integer read Get_AppSpecific write Set_AppSpecific;
    property Ack: Integer read Get_Ack write Set_Ack;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property MaxTimeToReachQueue: Integer read Get_MaxTimeToReachQueue write Set_MaxTimeToReachQueue;
    property MaxTimeToReceive: Integer read Get_MaxTimeToReceive write Set_MaxTimeToReceive;
    property HashAlgorithm: Integer read Get_HashAlgorithm write Set_HashAlgorithm;
    property EncryptAlgorithm: Integer read Get_EncryptAlgorithm write Set_EncryptAlgorithm;
    property SenderIdType: Integer read Get_SenderIdType write Set_SenderIdType;
    property ConnectorTypeGuid: WideString read Get_ConnectorTypeGuid write Set_ConnectorTypeGuid;
    property AuthenticationProviderType: Integer read Get_AuthenticationProviderType write Set_AuthenticationProviderType;
    property AuthenticationProviderName: WideString read Get_AuthenticationProviderName write Set_AuthenticationProviderName;
    property MsgClass: Integer read Get_MsgClass write Set_MsgClass;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQMessageProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQMessage
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQMessageProperties = class(TPersistent)
  private
    FServer:    TMSMQMessage;
    function    GetDefaultInterface: IMSMQMessage3;
    constructor Create(AServer: TMSMQMessage);
  protected
    function Get_Class_: Integer;
    function Get_PrivLevel: Integer;
    procedure Set_PrivLevel(plPrivLevel: Integer);
    function Get_AuthLevel: Integer;
    procedure Set_AuthLevel(plAuthLevel: Integer);
    function Get_IsAuthenticated: Smallint;
    function Get_Delivery: Integer;
    procedure Set_Delivery(plDelivery: Integer);
    function Get_Trace: Integer;
    procedure Set_Trace(plTrace: Integer);
    function Get_Priority: Integer;
    procedure Set_Priority(plPriority: Integer);
    function Get_Journal: Integer;
    procedure Set_Journal(plJournal: Integer);
    function Get_ResponseQueueInfo_v1: IMSMQQueueInfo;
    procedure _Set_ResponseQueueInfo_v1(const ppqinfoResponse: IMSMQQueueInfo);
    function Get_AppSpecific: Integer;
    procedure Set_AppSpecific(plAppSpecific: Integer);
    function Get_SourceMachineGuid: WideString;
    function Get_BodyLength: Integer;
    function Get_Body: OleVariant;
    procedure Set_Body(pvarBody: OleVariant);
    function Get_AdminQueueInfo_v1: IMSMQQueueInfo;
    procedure _Set_AdminQueueInfo_v1(const ppqinfoAdmin: IMSMQQueueInfo);
    function Get_Id: OleVariant;
    function Get_CorrelationId: OleVariant;
    procedure Set_CorrelationId(pvarMsgId: OleVariant);
    function Get_Ack: Integer;
    procedure Set_Ack(plAck: Integer);
    function Get_Label_: WideString;
    procedure Set_Label_(const pbstrLabel: WideString);
    function Get_MaxTimeToReachQueue: Integer;
    procedure Set_MaxTimeToReachQueue(plMaxTimeToReachQueue: Integer);
    function Get_MaxTimeToReceive: Integer;
    procedure Set_MaxTimeToReceive(plMaxTimeToReceive: Integer);
    function Get_HashAlgorithm: Integer;
    procedure Set_HashAlgorithm(plHashAlg: Integer);
    function Get_EncryptAlgorithm: Integer;
    procedure Set_EncryptAlgorithm(plEncryptAlg: Integer);
    function Get_SentTime: OleVariant;
    function Get_ArrivedTime: OleVariant;
    function Get_DestinationQueueInfo: IMSMQQueueInfo3;
    function Get_SenderCertificate: OleVariant;
    procedure Set_SenderCertificate(pvarSenderCert: OleVariant);
    function Get_SenderId: OleVariant;
    function Get_SenderIdType: Integer;
    procedure Set_SenderIdType(plSenderIdType: Integer);
    function Get_SenderVersion: Integer;
    function Get_Extension: OleVariant;
    procedure Set_Extension(pvarExtension: OleVariant);
    function Get_ConnectorTypeGuid: WideString;
    procedure Set_ConnectorTypeGuid(const pbstrGuidConnectorType: WideString);
    function Get_TransactionStatusQueueInfo: IMSMQQueueInfo3;
    function Get_DestinationSymmetricKey: OleVariant;
    procedure Set_DestinationSymmetricKey(pvarDestSymmKey: OleVariant);
    function Get_Signature: OleVariant;
    procedure Set_Signature(pvarSignature: OleVariant);
    function Get_AuthenticationProviderType: Integer;
    procedure Set_AuthenticationProviderType(plAuthProvType: Integer);
    function Get_AuthenticationProviderName: WideString;
    procedure Set_AuthenticationProviderName(const pbstrAuthProvName: WideString);
    procedure Set_SenderId(pvarSenderId: OleVariant);
    function Get_MsgClass: Integer;
    procedure Set_MsgClass(plMsgClass: Integer);
    function Get_Properties: IDispatch;
    function Get_TransactionId: OleVariant;
    function Get_IsFirstInTransaction: Smallint;
    function Get_IsLastInTransaction: Smallint;
    function Get_ResponseQueueInfo_v2: IMSMQQueueInfo2;
    procedure _Set_ResponseQueueInfo_v2(const ppqinfoResponse: IMSMQQueueInfo2);
    function Get_AdminQueueInfo_v2: IMSMQQueueInfo2;
    procedure _Set_AdminQueueInfo_v2(const ppqinfoAdmin: IMSMQQueueInfo2);
    function Get_ReceivedAuthenticationLevel: Smallint;
    function Get_ResponseQueueInfo: IMSMQQueueInfo3;
    procedure _Set_ResponseQueueInfo(const ppqinfoResponse: IMSMQQueueInfo3);
    function Get_AdminQueueInfo: IMSMQQueueInfo3;
    procedure _Set_AdminQueueInfo(const ppqinfoAdmin: IMSMQQueueInfo3);
    function Get_ResponseDestination: IDispatch;
    procedure _Set_ResponseDestination(const ppdestResponse: IDispatch);
    function Get_Destination: IDispatch;
    function Get_LookupId: OleVariant;
    function Get_IsAuthenticated2: WordBool;
    function Get_IsFirstInTransaction2: WordBool;
    function Get_IsLastInTransaction2: WordBool;
    function Get_SoapEnvelope: WideString;
    function Get_CompoundMessage: OleVariant;
    procedure Set_SoapHeader(const Param1: WideString);
    procedure Set_SoapBody(const Param1: WideString);
  public
    property DefaultInterface: IMSMQMessage3 read GetDefaultInterface;
  published
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property AuthLevel: Integer read Get_AuthLevel write Set_AuthLevel;
    property Delivery: Integer read Get_Delivery write Set_Delivery;
    property Trace: Integer read Get_Trace write Set_Trace;
    property Priority: Integer read Get_Priority write Set_Priority;
    property Journal: Integer read Get_Journal write Set_Journal;
    property AppSpecific: Integer read Get_AppSpecific write Set_AppSpecific;
    property Ack: Integer read Get_Ack write Set_Ack;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property MaxTimeToReachQueue: Integer read Get_MaxTimeToReachQueue write Set_MaxTimeToReachQueue;
    property MaxTimeToReceive: Integer read Get_MaxTimeToReceive write Set_MaxTimeToReceive;
    property HashAlgorithm: Integer read Get_HashAlgorithm write Set_HashAlgorithm;
    property EncryptAlgorithm: Integer read Get_EncryptAlgorithm write Set_EncryptAlgorithm;
    property SenderIdType: Integer read Get_SenderIdType write Set_SenderIdType;
    property ConnectorTypeGuid: WideString read Get_ConnectorTypeGuid write Set_ConnectorTypeGuid;
    property AuthenticationProviderType: Integer read Get_AuthenticationProviderType write Set_AuthenticationProviderType;
    property AuthenticationProviderName: WideString read Get_AuthenticationProviderName write Set_AuthenticationProviderName;
    property MsgClass: Integer read Get_MsgClass write Set_MsgClass;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQQueue provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQQueue3 exposed by              
// the CoClass MSMQQueue. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQQueue = class
    class function Create: IMSMQQueue3;
    class function CreateRemote(const MachineName: string): IMSMQQueue3;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQQueue
// Help String      : 
// Default Interface: IMSMQQueue3
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQQueueProperties= class;
{$ENDIF}
  TMSMQQueue = class(TOleServer)
  private
    FIntf:        IMSMQQueue3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQQueueProperties;
    function      GetServerProperties: TMSMQQueueProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQQueue3;
  protected
    procedure InitServerData; override;
    function Get_Access: Integer;
    function Get_ShareMode: Integer;
    function Get_QueueInfo: IMSMQQueueInfo3;
    function Get_Handle: Integer;
    function Get_IsOpen: Smallint;
    function Get_Properties: IDispatch;
    function Get_Handle2: OleVariant;
    function Get_IsOpen2: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQQueue3);
    procedure Disconnect; override;
    procedure Close;
    function Receive_v1: IMSMQMessage; overload;
    function Receive_v1(var Transaction: OleVariant): IMSMQMessage; overload;
    function Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage; overload;
    function Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                        var WantBody: OleVariant): IMSMQMessage; overload;
    function Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                        var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; overload;
    function Peek_v1: IMSMQMessage; overload;
    function Peek_v1(var WantDestinationQueue: OleVariant): IMSMQMessage; overload;
    function Peek_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage; overload;
    function Peek_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                     var ReceiveTimeout: OleVariant): IMSMQMessage; overload;
    procedure EnableNotification(const Event: IMSMQEvent3); overload;
    procedure EnableNotification(const Event: IMSMQEvent3; var Cursor: OleVariant); overload;
    procedure EnableNotification(const Event: IMSMQEvent3; var Cursor: OleVariant; 
                                 var ReceiveTimeout: OleVariant); overload;
    procedure Reset;
    function ReceiveCurrent_v1: IMSMQMessage; overload;
    function ReceiveCurrent_v1(var Transaction: OleVariant): IMSMQMessage; overload;
    function ReceiveCurrent_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage; overload;
    function ReceiveCurrent_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                               var WantBody: OleVariant): IMSMQMessage; overload;
    function ReceiveCurrent_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                               var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage; overload;
    function PeekNext_v1: IMSMQMessage; overload;
    function PeekNext_v1(var WantDestinationQueue: OleVariant): IMSMQMessage; overload;
    function PeekNext_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage; overload;
    function PeekNext_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant): IMSMQMessage; overload;
    function PeekCurrent_v1: IMSMQMessage; overload;
    function PeekCurrent_v1(var WantDestinationQueue: OleVariant): IMSMQMessage; overload;
    function PeekCurrent_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage; overload;
    function PeekCurrent_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                            var ReceiveTimeout: OleVariant): IMSMQMessage; overload;
    function Receive: IMSMQMessage3; overload;
    function Receive(var Transaction: OleVariant): IMSMQMessage3; overload;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                     var WantBody: OleVariant): IMSMQMessage3; overload;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                     var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage3; overload;
    function Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                     var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                     var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function Peek: IMSMQMessage3; overload;
    function Peek(var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3; overload;
    function Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                  var ReceiveTimeout: OleVariant): IMSMQMessage3; overload;
    function Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                  var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function ReceiveCurrent: IMSMQMessage3; overload;
    function ReceiveCurrent(var Transaction: OleVariant): IMSMQMessage3; overload;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant): IMSMQMessage3; overload;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage3; overload;
    function ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                            var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function PeekNext: IMSMQMessage3; overload;
    function PeekNext(var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3; overload;
    function PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                      var ReceiveTimeout: OleVariant): IMSMQMessage3; overload;
    function PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                      var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function PeekCurrent: IMSMQMessage3; overload;
    function PeekCurrent(var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3; overload;
    function PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant): IMSMQMessage3; overload;
    function PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function ReceiveByLookupId(LookupId: OleVariant): IMSMQMessage3; overload;
    function ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant): IMSMQMessage3; overload;
    function ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                               var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                               var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3; overload;
    function ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                               var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                               var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function ReceiveNextByLookupId(LookupId: OleVariant): IMSMQMessage3; overload;
    function ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant): IMSMQMessage3; overload;
    function ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3; overload;
    function ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                   var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function ReceivePreviousByLookupId(LookupId: OleVariant): IMSMQMessage3; overload;
    function ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant): IMSMQMessage3; overload;
    function ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                       var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                       var WantDestinationQueue: OleVariant; 
                                       var WantBody: OleVariant): IMSMQMessage3; overload;
    function ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                       var WantDestinationQueue: OleVariant; 
                                       var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function ReceiveFirstByLookupId: IMSMQMessage3; overload;
    function ReceiveFirstByLookupId(var Transaction: OleVariant): IMSMQMessage3; overload;
    function ReceiveFirstByLookupId(var Transaction: OleVariant; 
                                    var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function ReceiveFirstByLookupId(var Transaction: OleVariant; 
                                    var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3; overload;
    function ReceiveFirstByLookupId(var Transaction: OleVariant; 
                                    var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                    var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function ReceiveLastByLookupId: IMSMQMessage3; overload;
    function ReceiveLastByLookupId(var Transaction: OleVariant): IMSMQMessage3; overload;
    function ReceiveLastByLookupId(var Transaction: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function ReceiveLastByLookupId(var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3; overload;
    function ReceiveLastByLookupId(var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                   var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function PeekByLookupId(LookupId: OleVariant): IMSMQMessage3; overload;
    function PeekByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function PeekByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant): IMSMQMessage3; overload;
    function PeekByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function PeekNextByLookupId(LookupId: OleVariant): IMSMQMessage3; overload;
    function PeekNextByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function PeekNextByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                var WantBody: OleVariant): IMSMQMessage3; overload;
    function PeekNextByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function PeekPreviousByLookupId(LookupId: OleVariant): IMSMQMessage3; overload;
    function PeekPreviousByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function PeekPreviousByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                    var WantBody: OleVariant): IMSMQMessage3; overload;
    function PeekPreviousByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                    var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function PeekFirstByLookupId: IMSMQMessage3; overload;
    function PeekFirstByLookupId(var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function PeekFirstByLookupId(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3; overload;
    function PeekFirstByLookupId(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                 var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    function PeekLastByLookupId: IMSMQMessage3; overload;
    function PeekLastByLookupId(var WantDestinationQueue: OleVariant): IMSMQMessage3; overload;
    function PeekLastByLookupId(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3; overload;
    function PeekLastByLookupId(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                var WantConnectorType: OleVariant): IMSMQMessage3; overload;
    procedure Purge;
    property DefaultInterface: IMSMQQueue3 read GetDefaultInterface;
    property Access: Integer read Get_Access;
    property ShareMode: Integer read Get_ShareMode;
    property QueueInfo: IMSMQQueueInfo3 read Get_QueueInfo;
    property Handle: Integer read Get_Handle;
    property IsOpen: Smallint read Get_IsOpen;
    property Properties: IDispatch read Get_Properties;
    property Handle2: OleVariant read Get_Handle2;
    property IsOpen2: WordBool read Get_IsOpen2;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQQueueProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQQueue
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQQueueProperties = class(TPersistent)
  private
    FServer:    TMSMQQueue;
    function    GetDefaultInterface: IMSMQQueue3;
    constructor Create(AServer: TMSMQQueue);
  protected
    function Get_Access: Integer;
    function Get_ShareMode: Integer;
    function Get_QueueInfo: IMSMQQueueInfo3;
    function Get_Handle: Integer;
    function Get_IsOpen: Smallint;
    function Get_Properties: IDispatch;
    function Get_Handle2: OleVariant;
    function Get_IsOpen2: WordBool;
  public
    property DefaultInterface: IMSMQQueue3 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQEvent provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQEvent3 exposed by              
// the CoClass MSMQEvent. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQEvent = class
    class function Create: IMSMQEvent3;
    class function CreateRemote(const MachineName: string): IMSMQEvent3;
  end;

  TMSMQEventArrived = procedure(ASender: TObject; const Queue: IDispatch; Cursor: Integer) of object;
  TMSMQEventArrivedError = procedure(ASender: TObject; const Queue: IDispatch; ErrorCode: Integer; 
                                                       Cursor: Integer) of object;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQEvent
// Help String      : 
// Default Interface: IMSMQEvent3
// Def. Intf. DISP? : No
// Event   Interface: _DMSMQEventEvents
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQEventProperties= class;
{$ENDIF}
  TMSMQEvent = class(TOleServer)
  private
    FOnArrived: TMSMQEventArrived;
    FOnArrivedError: TMSMQEventArrivedError;
    FIntf:        IMSMQEvent3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQEventProperties;
    function      GetServerProperties: TMSMQEventProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQEvent3;
  protected
    procedure InitServerData; override;
    procedure InvokeEvent(DispID: TDispID; var Params: TVariantArray); override;
    function Get_Properties: IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQEvent3);
    procedure Disconnect; override;
    property DefaultInterface: IMSMQEvent3 read GetDefaultInterface;
    property Properties: IDispatch read Get_Properties;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQEventProperties read GetServerProperties;
{$ENDIF}
    property OnArrived: TMSMQEventArrived read FOnArrived write FOnArrived;
    property OnArrivedError: TMSMQEventArrivedError read FOnArrivedError write FOnArrivedError;
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQEvent
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQEventProperties = class(TPersistent)
  private
    FServer:    TMSMQEvent;
    function    GetDefaultInterface: IMSMQEvent3;
    constructor Create(AServer: TMSMQEvent);
  protected
    function Get_Properties: IDispatch;
  public
    property DefaultInterface: IMSMQEvent3 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQQueueInfo provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQQueueInfo3 exposed by              
// the CoClass MSMQQueueInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQQueueInfo = class
    class function Create: IMSMQQueueInfo3;
    class function CreateRemote(const MachineName: string): IMSMQQueueInfo3;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQQueueInfo
// Help String      : 
// Default Interface: IMSMQQueueInfo3
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQQueueInfoProperties= class;
{$ENDIF}
  TMSMQQueueInfo = class(TOleServer)
  private
    FIntf:        IMSMQQueueInfo3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQQueueInfoProperties;
    function      GetServerProperties: TMSMQQueueInfoProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQQueueInfo3;
  protected
    procedure InitServerData; override;
    function Get_QueueGuid: WideString;
    function Get_ServiceTypeGuid: WideString;
    procedure Set_ServiceTypeGuid(const pbstrGuidServiceType: WideString);
    function Get_Label_: WideString;
    procedure Set_Label_(const pbstrLabel: WideString);
    function Get_PathName: WideString;
    procedure Set_PathName(const pbstrPathName: WideString);
    function Get_FormatName: WideString;
    procedure Set_FormatName(const pbstrFormatName: WideString);
    function Get_IsTransactional: Smallint;
    function Get_PrivLevel: Integer;
    procedure Set_PrivLevel(plPrivLevel: Integer);
    function Get_Journal: Integer;
    procedure Set_Journal(plJournal: Integer);
    function Get_Quota: Integer;
    procedure Set_Quota(plQuota: Integer);
    function Get_BasePriority: Integer;
    procedure Set_BasePriority(plBasePriority: Integer);
    function Get_CreateTime: OleVariant;
    function Get_ModifyTime: OleVariant;
    function Get_Authenticate: Integer;
    procedure Set_Authenticate(plAuthenticate: Integer);
    function Get_JournalQuota: Integer;
    procedure Set_JournalQuota(plJournalQuota: Integer);
    function Get_IsWorldReadable: Smallint;
    function Get_PathNameDNS: WideString;
    function Get_Properties: IDispatch;
    function Get_Security: OleVariant;
    procedure Set_Security(pvarSecurity: OleVariant);
    function Get_IsTransactional2: WordBool;
    function Get_IsWorldReadable2: WordBool;
    function Get_MulticastAddress: WideString;
    procedure Set_MulticastAddress(const pbstrMulticastAddress: WideString);
    function Get_ADsPath: WideString;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQQueueInfo3);
    procedure Disconnect; override;
    procedure Create1; overload;
    procedure Create1(var IsTransactional: OleVariant); overload;
    procedure Create1(var IsTransactional: OleVariant; var IsWorldReadable: OleVariant); overload;
    procedure Delete;
    function Open(Access: Integer; ShareMode: Integer): IMSMQQueue3;
    procedure Refresh;
    procedure Update;
    property DefaultInterface: IMSMQQueueInfo3 read GetDefaultInterface;
    property QueueGuid: WideString read Get_QueueGuid;
    property IsTransactional: Smallint read Get_IsTransactional;
    property CreateTime: OleVariant read Get_CreateTime;
    property ModifyTime: OleVariant read Get_ModifyTime;
    property IsWorldReadable: Smallint read Get_IsWorldReadable;
    property PathNameDNS: WideString read Get_PathNameDNS;
    property Properties: IDispatch read Get_Properties;
    property Security: OleVariant read Get_Security write Set_Security;
    property IsTransactional2: WordBool read Get_IsTransactional2;
    property IsWorldReadable2: WordBool read Get_IsWorldReadable2;
    property ADsPath: WideString read Get_ADsPath;
    property ServiceTypeGuid: WideString read Get_ServiceTypeGuid write Set_ServiceTypeGuid;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property PathName: WideString read Get_PathName write Set_PathName;
    property FormatName: WideString read Get_FormatName write Set_FormatName;
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property Journal: Integer read Get_Journal write Set_Journal;
    property Quota: Integer read Get_Quota write Set_Quota;
    property BasePriority: Integer read Get_BasePriority write Set_BasePriority;
    property Authenticate: Integer read Get_Authenticate write Set_Authenticate;
    property JournalQuota: Integer read Get_JournalQuota write Set_JournalQuota;
    property MulticastAddress: WideString read Get_MulticastAddress write Set_MulticastAddress;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQQueueInfoProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQQueueInfo
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQQueueInfoProperties = class(TPersistent)
  private
    FServer:    TMSMQQueueInfo;
    function    GetDefaultInterface: IMSMQQueueInfo3;
    constructor Create(AServer: TMSMQQueueInfo);
  protected
    function Get_QueueGuid: WideString;
    function Get_ServiceTypeGuid: WideString;
    procedure Set_ServiceTypeGuid(const pbstrGuidServiceType: WideString);
    function Get_Label_: WideString;
    procedure Set_Label_(const pbstrLabel: WideString);
    function Get_PathName: WideString;
    procedure Set_PathName(const pbstrPathName: WideString);
    function Get_FormatName: WideString;
    procedure Set_FormatName(const pbstrFormatName: WideString);
    function Get_IsTransactional: Smallint;
    function Get_PrivLevel: Integer;
    procedure Set_PrivLevel(plPrivLevel: Integer);
    function Get_Journal: Integer;
    procedure Set_Journal(plJournal: Integer);
    function Get_Quota: Integer;
    procedure Set_Quota(plQuota: Integer);
    function Get_BasePriority: Integer;
    procedure Set_BasePriority(plBasePriority: Integer);
    function Get_CreateTime: OleVariant;
    function Get_ModifyTime: OleVariant;
    function Get_Authenticate: Integer;
    procedure Set_Authenticate(plAuthenticate: Integer);
    function Get_JournalQuota: Integer;
    procedure Set_JournalQuota(plJournalQuota: Integer);
    function Get_IsWorldReadable: Smallint;
    function Get_PathNameDNS: WideString;
    function Get_Properties: IDispatch;
    function Get_Security: OleVariant;
    procedure Set_Security(pvarSecurity: OleVariant);
    function Get_IsTransactional2: WordBool;
    function Get_IsWorldReadable2: WordBool;
    function Get_MulticastAddress: WideString;
    procedure Set_MulticastAddress(const pbstrMulticastAddress: WideString);
    function Get_ADsPath: WideString;
  public
    property DefaultInterface: IMSMQQueueInfo3 read GetDefaultInterface;
  published
    property ServiceTypeGuid: WideString read Get_ServiceTypeGuid write Set_ServiceTypeGuid;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property PathName: WideString read Get_PathName write Set_PathName;
    property FormatName: WideString read Get_FormatName write Set_FormatName;
    property PrivLevel: Integer read Get_PrivLevel write Set_PrivLevel;
    property Journal: Integer read Get_Journal write Set_Journal;
    property Quota: Integer read Get_Quota write Set_Quota;
    property BasePriority: Integer read Get_BasePriority write Set_BasePriority;
    property Authenticate: Integer read Get_Authenticate write Set_Authenticate;
    property JournalQuota: Integer read Get_JournalQuota write Set_JournalQuota;
    property MulticastAddress: WideString read Get_MulticastAddress write Set_MulticastAddress;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQQueueInfos provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQQueueInfos3 exposed by              
// the CoClass MSMQQueueInfos. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQQueueInfos = class
    class function Create: IMSMQQueueInfos3;
    class function CreateRemote(const MachineName: string): IMSMQQueueInfos3;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQQueueInfos
// Help String      : 
// Default Interface: IMSMQQueueInfos3
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQQueueInfosProperties= class;
{$ENDIF}
  TMSMQQueueInfos = class(TOleServer)
  private
    FIntf:        IMSMQQueueInfos3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQQueueInfosProperties;
    function      GetServerProperties: TMSMQQueueInfosProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQQueueInfos3;
  protected
    procedure InitServerData; override;
    function Get_Properties: IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQQueueInfos3);
    procedure Disconnect; override;
    procedure Reset;
    function Next: IMSMQQueueInfo3;
    property DefaultInterface: IMSMQQueueInfos3 read GetDefaultInterface;
    property Properties: IDispatch read Get_Properties;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQQueueInfosProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQQueueInfos
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQQueueInfosProperties = class(TPersistent)
  private
    FServer:    TMSMQQueueInfos;
    function    GetDefaultInterface: IMSMQQueueInfos3;
    constructor Create(AServer: TMSMQQueueInfos);
  protected
    function Get_Properties: IDispatch;
  public
    property DefaultInterface: IMSMQQueueInfos3 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQTransaction provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQTransaction3 exposed by              
// the CoClass MSMQTransaction. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQTransaction = class
    class function Create: IMSMQTransaction3;
    class function CreateRemote(const MachineName: string): IMSMQTransaction3;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQTransaction
// Help String      : 
// Default Interface: IMSMQTransaction3
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQTransactionProperties= class;
{$ENDIF}
  TMSMQTransaction = class(TOleServer)
  private
    FIntf:        IMSMQTransaction3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQTransactionProperties;
    function      GetServerProperties: TMSMQTransactionProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQTransaction3;
  protected
    procedure InitServerData; override;
    function Get_Transaction: Integer;
    function Get_Properties: IDispatch;
    function Get_ITransaction: OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQTransaction3);
    procedure Disconnect; override;
    procedure Commit; overload;
    procedure Commit(var fRetaining: OleVariant); overload;
    procedure Commit(var fRetaining: OleVariant; var grfTC: OleVariant); overload;
    procedure Commit(var fRetaining: OleVariant; var grfTC: OleVariant; var grfRM: OleVariant); overload;
    procedure Abort; overload;
    procedure Abort(var fRetaining: OleVariant); overload;
    procedure Abort(var fRetaining: OleVariant; var fAsync: OleVariant); overload;
    procedure InitNew(varTransaction: OleVariant);
    property DefaultInterface: IMSMQTransaction3 read GetDefaultInterface;
    property Transaction: Integer read Get_Transaction;
    property Properties: IDispatch read Get_Properties;
    property ITransaction: OleVariant read Get_ITransaction;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQTransactionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQTransaction
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQTransactionProperties = class(TPersistent)
  private
    FServer:    TMSMQTransaction;
    function    GetDefaultInterface: IMSMQTransaction3;
    constructor Create(AServer: TMSMQTransaction);
  protected
    function Get_Transaction: Integer;
    function Get_Properties: IDispatch;
    function Get_ITransaction: OleVariant;
  public
    property DefaultInterface: IMSMQTransaction3 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQCoordinatedTransactionDispenser provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQCoordinatedTransactionDispenser3 exposed by              
// the CoClass MSMQCoordinatedTransactionDispenser. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQCoordinatedTransactionDispenser = class
    class function Create: IMSMQCoordinatedTransactionDispenser3;
    class function CreateRemote(const MachineName: string): IMSMQCoordinatedTransactionDispenser3;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQCoordinatedTransactionDispenser
// Help String      : 
// Default Interface: IMSMQCoordinatedTransactionDispenser3
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQCoordinatedTransactionDispenserProperties= class;
{$ENDIF}
  TMSMQCoordinatedTransactionDispenser = class(TOleServer)
  private
    FIntf:        IMSMQCoordinatedTransactionDispenser3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQCoordinatedTransactionDispenserProperties;
    function      GetServerProperties: TMSMQCoordinatedTransactionDispenserProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQCoordinatedTransactionDispenser3;
  protected
    procedure InitServerData; override;
    function Get_Properties: IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQCoordinatedTransactionDispenser3);
    procedure Disconnect; override;
    function BeginTransaction: IMSMQTransaction3;
    property DefaultInterface: IMSMQCoordinatedTransactionDispenser3 read GetDefaultInterface;
    property Properties: IDispatch read Get_Properties;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQCoordinatedTransactionDispenserProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQCoordinatedTransactionDispenser
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQCoordinatedTransactionDispenserProperties = class(TPersistent)
  private
    FServer:    TMSMQCoordinatedTransactionDispenser;
    function    GetDefaultInterface: IMSMQCoordinatedTransactionDispenser3;
    constructor Create(AServer: TMSMQCoordinatedTransactionDispenser);
  protected
    function Get_Properties: IDispatch;
  public
    property DefaultInterface: IMSMQCoordinatedTransactionDispenser3 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQTransactionDispenser provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQTransactionDispenser3 exposed by              
// the CoClass MSMQTransactionDispenser. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQTransactionDispenser = class
    class function Create: IMSMQTransactionDispenser3;
    class function CreateRemote(const MachineName: string): IMSMQTransactionDispenser3;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQTransactionDispenser
// Help String      : 
// Default Interface: IMSMQTransactionDispenser3
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQTransactionDispenserProperties= class;
{$ENDIF}
  TMSMQTransactionDispenser = class(TOleServer)
  private
    FIntf:        IMSMQTransactionDispenser3;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQTransactionDispenserProperties;
    function      GetServerProperties: TMSMQTransactionDispenserProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQTransactionDispenser3;
  protected
    procedure InitServerData; override;
    function Get_Properties: IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQTransactionDispenser3);
    procedure Disconnect; override;
    function BeginTransaction: IMSMQTransaction3;
    property DefaultInterface: IMSMQTransactionDispenser3 read GetDefaultInterface;
    property Properties: IDispatch read Get_Properties;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQTransactionDispenserProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQTransactionDispenser
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQTransactionDispenserProperties = class(TPersistent)
  private
    FServer:    TMSMQTransactionDispenser;
    function    GetDefaultInterface: IMSMQTransactionDispenser3;
    constructor Create(AServer: TMSMQTransactionDispenser);
  protected
    function Get_Properties: IDispatch;
  public
    property DefaultInterface: IMSMQTransactionDispenser3 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQApplication provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQApplication3 exposed by              
// the CoClass MSMQApplication. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQApplication = class
    class function Create: IMSMQApplication3;
    class function CreateRemote(const MachineName: string): IMSMQApplication3;
  end;

// *********************************************************************//
// The Class CoMSMQDestination provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQDestination exposed by              
// the CoClass MSMQDestination. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQDestination = class
    class function Create: IMSMQDestination;
    class function CreateRemote(const MachineName: string): IMSMQDestination;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQDestination
// Help String      : 
// Default Interface: IMSMQDestination
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQDestinationProperties= class;
{$ENDIF}
  TMSMQDestination = class(TOleServer)
  private
    FIntf:        IMSMQDestination;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQDestinationProperties;
    function      GetServerProperties: TMSMQDestinationProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQDestination;
  protected
    procedure InitServerData; override;
    function Get_IsOpen: WordBool;
    function Get_IADs: IDispatch;
    procedure _Set_IADs(const ppIADs: IDispatch);
    function Get_ADsPath: WideString;
    procedure Set_ADsPath(const pbstrADsPath: WideString);
    function Get_PathName: WideString;
    procedure Set_PathName(const pbstrPathName: WideString);
    function Get_FormatName: WideString;
    procedure Set_FormatName(const pbstrFormatName: WideString);
    function Get_Destinations: IDispatch;
    procedure _Set_Destinations(const ppDestinations: IDispatch);
    function Get_Properties: IDispatch;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQDestination);
    procedure Disconnect; override;
    procedure Open;
    procedure Close;
    property DefaultInterface: IMSMQDestination read GetDefaultInterface;
    property IsOpen: WordBool read Get_IsOpen;
    property IADs: IDispatch read Get_IADs write _Set_IADs;
    property Destinations: IDispatch read Get_Destinations write _Set_Destinations;
    property Properties: IDispatch read Get_Properties;
    property ADsPath: WideString read Get_ADsPath write Set_ADsPath;
    property PathName: WideString read Get_PathName write Set_PathName;
    property FormatName: WideString read Get_FormatName write Set_FormatName;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQDestinationProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQDestination
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQDestinationProperties = class(TPersistent)
  private
    FServer:    TMSMQDestination;
    function    GetDefaultInterface: IMSMQDestination;
    constructor Create(AServer: TMSMQDestination);
  protected
    function Get_IsOpen: WordBool;
    function Get_IADs: IDispatch;
    procedure _Set_IADs(const ppIADs: IDispatch);
    function Get_ADsPath: WideString;
    procedure Set_ADsPath(const pbstrADsPath: WideString);
    function Get_PathName: WideString;
    procedure Set_PathName(const pbstrPathName: WideString);
    function Get_FormatName: WideString;
    procedure Set_FormatName(const pbstrFormatName: WideString);
    function Get_Destinations: IDispatch;
    procedure _Set_Destinations(const ppDestinations: IDispatch);
    function Get_Properties: IDispatch;
  public
    property DefaultInterface: IMSMQDestination read GetDefaultInterface;
  published
    property ADsPath: WideString read Get_ADsPath write Set_ADsPath;
    property PathName: WideString read Get_PathName write Set_PathName;
    property FormatName: WideString read Get_FormatName write Set_FormatName;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQManagement provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQManagement exposed by              
// the CoClass MSMQManagement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQManagement = class
    class function Create: IMSMQManagement;
    class function CreateRemote(const MachineName: string): IMSMQManagement;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQManagement
// Help String      : 
// Default Interface: IMSMQManagement
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQManagementProperties= class;
{$ENDIF}
  TMSMQManagement = class(TOleServer)
  private
    FIntf:        IMSMQManagement;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQManagementProperties;
    function      GetServerProperties: TMSMQManagementProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQManagement;
  protected
    procedure InitServerData; override;
    function Get_FormatName: WideString;
    function Get_Machine: WideString;
    function Get_MessageCount: Integer;
    function Get_ForeignStatus: Integer;
    function Get_QueueType: Integer;
    function Get_IsLocal: WordBool;
    function Get_TransactionalStatus: Integer;
    function Get_BytesInQueue: OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQManagement);
    procedure Disconnect; override;
    procedure Init; overload;
    procedure Init(var Machine: OleVariant); overload;
    procedure Init(var Machine: OleVariant; var PathName: OleVariant); overload;
    procedure Init(var Machine: OleVariant; var PathName: OleVariant; var FormatName: OleVariant); overload;
    property DefaultInterface: IMSMQManagement read GetDefaultInterface;
    property FormatName: WideString read Get_FormatName;
    property Machine: WideString read Get_Machine;
    property MessageCount: Integer read Get_MessageCount;
    property ForeignStatus: Integer read Get_ForeignStatus;
    property QueueType: Integer read Get_QueueType;
    property IsLocal: WordBool read Get_IsLocal;
    property TransactionalStatus: Integer read Get_TransactionalStatus;
    property BytesInQueue: OleVariant read Get_BytesInQueue;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQManagementProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQManagement
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQManagementProperties = class(TPersistent)
  private
    FServer:    TMSMQManagement;
    function    GetDefaultInterface: IMSMQManagement;
    constructor Create(AServer: TMSMQManagement);
  protected
    function Get_FormatName: WideString;
    function Get_Machine: WideString;
    function Get_MessageCount: Integer;
    function Get_ForeignStatus: Integer;
    function Get_QueueType: Integer;
    function Get_IsLocal: WordBool;
    function Get_TransactionalStatus: Integer;
    function Get_BytesInQueue: OleVariant;
  public
    property DefaultInterface: IMSMQManagement read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQOutgoingQueueManagement provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQOutgoingQueueManagement exposed by              
// the CoClass MSMQOutgoingQueueManagement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQOutgoingQueueManagement = class
    class function Create: IMSMQOutgoingQueueManagement;
    class function CreateRemote(const MachineName: string): IMSMQOutgoingQueueManagement;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQOutgoingQueueManagement
// Help String      : 
// Default Interface: IMSMQOutgoingQueueManagement
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQOutgoingQueueManagementProperties= class;
{$ENDIF}
  TMSMQOutgoingQueueManagement = class(TOleServer)
  private
    FIntf:        IMSMQOutgoingQueueManagement;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQOutgoingQueueManagementProperties;
    function      GetServerProperties: TMSMQOutgoingQueueManagementProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQOutgoingQueueManagement;
  protected
    procedure InitServerData; override;
    function Get_FormatName: WideString;
    function Get_Machine: WideString;
    function Get_MessageCount: Integer;
    function Get_ForeignStatus: Integer;
    function Get_QueueType: Integer;
    function Get_IsLocal: WordBool;
    function Get_TransactionalStatus: Integer;
    function Get_BytesInQueue: OleVariant;
    function Get_State: Integer;
    function Get_NextHops: OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQOutgoingQueueManagement);
    procedure Disconnect; override;
    procedure Init; overload;
    procedure Init(var Machine: OleVariant); overload;
    procedure Init(var Machine: OleVariant; var PathName: OleVariant); overload;
    procedure Init(var Machine: OleVariant; var PathName: OleVariant; var FormatName: OleVariant); overload;
    function EodGetSendInfo: IMSMQCollection;
    procedure Resume;
    procedure Pause;
    procedure EodResend;
    property DefaultInterface: IMSMQOutgoingQueueManagement read GetDefaultInterface;
    property FormatName: WideString read Get_FormatName;
    property Machine: WideString read Get_Machine;
    property MessageCount: Integer read Get_MessageCount;
    property ForeignStatus: Integer read Get_ForeignStatus;
    property QueueType: Integer read Get_QueueType;
    property IsLocal: WordBool read Get_IsLocal;
    property TransactionalStatus: Integer read Get_TransactionalStatus;
    property BytesInQueue: OleVariant read Get_BytesInQueue;
    property State: Integer read Get_State;
    property NextHops: OleVariant read Get_NextHops;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQOutgoingQueueManagementProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQOutgoingQueueManagement
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQOutgoingQueueManagementProperties = class(TPersistent)
  private
    FServer:    TMSMQOutgoingQueueManagement;
    function    GetDefaultInterface: IMSMQOutgoingQueueManagement;
    constructor Create(AServer: TMSMQOutgoingQueueManagement);
  protected
    function Get_FormatName: WideString;
    function Get_Machine: WideString;
    function Get_MessageCount: Integer;
    function Get_ForeignStatus: Integer;
    function Get_QueueType: Integer;
    function Get_IsLocal: WordBool;
    function Get_TransactionalStatus: Integer;
    function Get_BytesInQueue: OleVariant;
    function Get_State: Integer;
    function Get_NextHops: OleVariant;
  public
    property DefaultInterface: IMSMQOutgoingQueueManagement read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMSMQQueueManagement provides a Create and CreateRemote method to          
// create instances of the default interface IMSMQQueueManagement exposed by              
// the CoClass MSMQQueueManagement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMSMQQueueManagement = class
    class function Create: IMSMQQueueManagement;
    class function CreateRemote(const MachineName: string): IMSMQQueueManagement;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMSMQQueueManagement
// Help String      : 
// Default Interface: IMSMQQueueManagement
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMSMQQueueManagementProperties= class;
{$ENDIF}
  TMSMQQueueManagement = class(TOleServer)
  private
    FIntf:        IMSMQQueueManagement;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMSMQQueueManagementProperties;
    function      GetServerProperties: TMSMQQueueManagementProperties;
{$ENDIF}
    function      GetDefaultInterface: IMSMQQueueManagement;
  protected
    procedure InitServerData; override;
    function Get_FormatName: WideString;
    function Get_Machine: WideString;
    function Get_MessageCount: Integer;
    function Get_ForeignStatus: Integer;
    function Get_QueueType: Integer;
    function Get_IsLocal: WordBool;
    function Get_TransactionalStatus: Integer;
    function Get_BytesInQueue: OleVariant;
    function Get_JournalMessageCount: Integer;
    function Get_BytesInJournal: OleVariant;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMSMQQueueManagement);
    procedure Disconnect; override;
    procedure Init; overload;
    procedure Init(var Machine: OleVariant); overload;
    procedure Init(var Machine: OleVariant; var PathName: OleVariant); overload;
    procedure Init(var Machine: OleVariant; var PathName: OleVariant; var FormatName: OleVariant); overload;
    function EodGetReceiveInfo: OleVariant;
    property DefaultInterface: IMSMQQueueManagement read GetDefaultInterface;
    property FormatName: WideString read Get_FormatName;
    property Machine: WideString read Get_Machine;
    property MessageCount: Integer read Get_MessageCount;
    property ForeignStatus: Integer read Get_ForeignStatus;
    property QueueType: Integer read Get_QueueType;
    property IsLocal: WordBool read Get_IsLocal;
    property TransactionalStatus: Integer read Get_TransactionalStatus;
    property BytesInQueue: OleVariant read Get_BytesInQueue;
    property JournalMessageCount: Integer read Get_JournalMessageCount;
    property BytesInJournal: OleVariant read Get_BytesInJournal;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMSMQQueueManagementProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMSMQQueueManagement
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMSMQQueueManagementProperties = class(TPersistent)
  private
    FServer:    TMSMQQueueManagement;
    function    GetDefaultInterface: IMSMQQueueManagement;
    constructor Create(AServer: TMSMQQueueManagement);
  protected
    function Get_FormatName: WideString;
    function Get_Machine: WideString;
    function Get_MessageCount: Integer;
    function Get_ForeignStatus: Integer;
    function Get_QueueType: Integer;
    function Get_IsLocal: WordBool;
    function Get_TransactionalStatus: Integer;
    function Get_BytesInQueue: OleVariant;
    function Get_JournalMessageCount: Integer;
    function Get_BytesInJournal: OleVariant;
  public
    property DefaultInterface: IMSMQQueueManagement read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'Servers';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoMSMQQuery.Create: IMSMQQuery3;
begin
  Result := CreateComObject(CLASS_MSMQQuery) as IMSMQQuery3;
end;

class function CoMSMQQuery.CreateRemote(const MachineName: string): IMSMQQuery3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQQuery) as IMSMQQuery3;
end;

procedure TMSMQQuery.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D7D6E073-DCCD-11D0-AA4B-0060970DEBAE}';
    IntfIID:   '{EBA96B19-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQQuery.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQQuery3;
  end;
end;

procedure TMSMQQuery.ConnectTo(svrIntf: IMSMQQuery3);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQQuery.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQQuery.GetDefaultInterface: IMSMQQuery3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQQuery.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQQueryProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQQuery.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQQuery.GetServerProperties: TMSMQQueryProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQQuery.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQQuery.LookupQueue_v2: IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQuery.LookupQueue_v2(var QueueGuid: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(QueueGuid, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQuery.LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(QueueGuid, ServiceTypeGuid, EmptyParam, EmptyParam, 
                                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQuery.LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                   var Label_: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(QueueGuid, ServiceTypeGuid, Label_, EmptyParam, 
                                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQuery.LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                   var Label_: OleVariant; var CreateTime: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQuery.LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                   var Label_: OleVariant; var CreateTime: OleVariant; 
                                   var ModifyTime: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                            ModifyTime, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQuery.LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                   var Label_: OleVariant; var CreateTime: OleVariant; 
                                   var ModifyTime: OleVariant; var RelServiceType: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                            ModifyTime, RelServiceType, EmptyParam, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQuery.LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                   var Label_: OleVariant; var CreateTime: OleVariant; 
                                   var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                                   var RelLabel: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                            ModifyTime, RelServiceType, RelLabel, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQuery.LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                   var Label_: OleVariant; var CreateTime: OleVariant; 
                                   var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                                   var RelLabel: OleVariant; var RelCreateTime: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                            ModifyTime, RelServiceType, RelLabel, RelCreateTime, 
                                            EmptyParam);
end;

function TMSMQQuery.LookupQueue_v2(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                   var Label_: OleVariant; var CreateTime: OleVariant; 
                                   var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                                   var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                                   var RelModifyTime: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue_v2(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                            ModifyTime, RelServiceType, RelLabel, RelCreateTime, 
                                            RelModifyTime);
end;

function TMSMQQuery.LookupQueue: IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                var Label_: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, Label_, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                var Label_: OleVariant; var CreateTime: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                         EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                var Label_: OleVariant; var CreateTime: OleVariant; 
                                var ModifyTime: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                         ModifyTime, EmptyParam, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                var Label_: OleVariant; var CreateTime: OleVariant; 
                                var ModifyTime: OleVariant; var RelServiceType: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                         ModifyTime, RelServiceType, EmptyParam, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                var Label_: OleVariant; var CreateTime: OleVariant; 
                                var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                                var RelLabel: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                         ModifyTime, RelServiceType, RelLabel, EmptyParam, 
                                         EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                var Label_: OleVariant; var CreateTime: OleVariant; 
                                var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                                var RelLabel: OleVariant; var RelCreateTime: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                         ModifyTime, RelServiceType, RelLabel, RelCreateTime, 
                                         EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                var Label_: OleVariant; var CreateTime: OleVariant; 
                                var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                                var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                                var RelModifyTime: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                         ModifyTime, RelServiceType, RelLabel, RelCreateTime, 
                                         RelModifyTime, EmptyParam, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                var Label_: OleVariant; var CreateTime: OleVariant; 
                                var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                                var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                                var RelModifyTime: OleVariant; var MulticastAddress: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                         ModifyTime, RelServiceType, RelLabel, RelCreateTime, 
                                         RelModifyTime, MulticastAddress, EmptyParam);
end;

function TMSMQQuery.LookupQueue(var QueueGuid: OleVariant; var ServiceTypeGuid: OleVariant; 
                                var Label_: OleVariant; var CreateTime: OleVariant; 
                                var ModifyTime: OleVariant; var RelServiceType: OleVariant; 
                                var RelLabel: OleVariant; var RelCreateTime: OleVariant; 
                                var RelModifyTime: OleVariant; var MulticastAddress: OleVariant; 
                                var RelMulticastAddress: OleVariant): IMSMQQueueInfos3;
begin
  Result := DefaultInterface.LookupQueue(QueueGuid, ServiceTypeGuid, Label_, CreateTime, 
                                         ModifyTime, RelServiceType, RelLabel, RelCreateTime, 
                                         RelModifyTime, MulticastAddress, RelMulticastAddress);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQQueryProperties.Create(AServer: TMSMQQuery);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQQueryProperties.GetDefaultInterface: IMSMQQuery3;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQQueryProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

{$ENDIF}

class function CoMSMQMessage.Create: IMSMQMessage3;
begin
  Result := CreateComObject(CLASS_MSMQMessage) as IMSMQMessage3;
end;

class function CoMSMQMessage.CreateRemote(const MachineName: string): IMSMQMessage3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQMessage) as IMSMQMessage3;
end;

procedure TMSMQMessage.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D7D6E075-DCCD-11D0-AA4B-0060970DEBAE}';
    IntfIID:   '{EBA96B1A-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQMessage.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQMessage3;
  end;
end;

procedure TMSMQMessage.ConnectTo(svrIntf: IMSMQMessage3);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQMessage.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQMessage.GetDefaultInterface: IMSMQMessage3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQMessage.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQMessageProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQMessage.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQMessage.GetServerProperties: TMSMQMessageProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQMessage.Get_Class_: Integer;
begin
    Result := DefaultInterface.Class_;
end;

function TMSMQMessage.Get_PrivLevel: Integer;
begin
    Result := DefaultInterface.PrivLevel;
end;

procedure TMSMQMessage.Set_PrivLevel(plPrivLevel: Integer);
begin
  DefaultInterface.Set_PrivLevel(plPrivLevel);
end;

function TMSMQMessage.Get_AuthLevel: Integer;
begin
    Result := DefaultInterface.AuthLevel;
end;

procedure TMSMQMessage.Set_AuthLevel(plAuthLevel: Integer);
begin
  DefaultInterface.Set_AuthLevel(plAuthLevel);
end;

function TMSMQMessage.Get_IsAuthenticated: Smallint;
begin
    Result := DefaultInterface.IsAuthenticated;
end;

function TMSMQMessage.Get_Delivery: Integer;
begin
    Result := DefaultInterface.Delivery;
end;

procedure TMSMQMessage.Set_Delivery(plDelivery: Integer);
begin
  DefaultInterface.Set_Delivery(plDelivery);
end;

function TMSMQMessage.Get_Trace: Integer;
begin
    Result := DefaultInterface.Trace;
end;

procedure TMSMQMessage.Set_Trace(plTrace: Integer);
begin
  DefaultInterface.Set_Trace(plTrace);
end;

function TMSMQMessage.Get_Priority: Integer;
begin
    Result := DefaultInterface.Priority;
end;

procedure TMSMQMessage.Set_Priority(plPriority: Integer);
begin
  DefaultInterface.Set_Priority(plPriority);
end;

function TMSMQMessage.Get_Journal: Integer;
begin
    Result := DefaultInterface.Journal;
end;

procedure TMSMQMessage.Set_Journal(plJournal: Integer);
begin
  DefaultInterface.Set_Journal(plJournal);
end;

function TMSMQMessage.Get_ResponseQueueInfo_v1: IMSMQQueueInfo;
begin
    Result := DefaultInterface.ResponseQueueInfo_v1;
end;

procedure TMSMQMessage._Set_ResponseQueueInfo_v1(const ppqinfoResponse: IMSMQQueueInfo);
  { Warning: The property ResponseQueueInfo_v1 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ResponseQueueInfo_v1 := ppqinfoResponse;
end;

function TMSMQMessage.Get_AppSpecific: Integer;
begin
    Result := DefaultInterface.AppSpecific;
end;

procedure TMSMQMessage.Set_AppSpecific(plAppSpecific: Integer);
begin
  DefaultInterface.Set_AppSpecific(plAppSpecific);
end;

function TMSMQMessage.Get_SourceMachineGuid: WideString;
begin
    Result := DefaultInterface.SourceMachineGuid;
end;

function TMSMQMessage.Get_BodyLength: Integer;
begin
    Result := DefaultInterface.BodyLength;
end;

function TMSMQMessage.Get_Body: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Body;
end;

procedure TMSMQMessage.Set_Body(pvarBody: OleVariant);
begin
  DefaultInterface.Set_Body(pvarBody);
end;

function TMSMQMessage.Get_AdminQueueInfo_v1: IMSMQQueueInfo;
begin
    Result := DefaultInterface.AdminQueueInfo_v1;
end;

procedure TMSMQMessage._Set_AdminQueueInfo_v1(const ppqinfoAdmin: IMSMQQueueInfo);
  { Warning: The property AdminQueueInfo_v1 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdminQueueInfo_v1 := ppqinfoAdmin;
end;

function TMSMQMessage.Get_Id: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Id;
end;

function TMSMQMessage.Get_CorrelationId: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.CorrelationId;
end;

procedure TMSMQMessage.Set_CorrelationId(pvarMsgId: OleVariant);
begin
  DefaultInterface.Set_CorrelationId(pvarMsgId);
end;

function TMSMQMessage.Get_Ack: Integer;
begin
    Result := DefaultInterface.Ack;
end;

procedure TMSMQMessage.Set_Ack(plAck: Integer);
begin
  DefaultInterface.Set_Ack(plAck);
end;

function TMSMQMessage.Get_Label_: WideString;
begin
    Result := DefaultInterface.Label_;
end;

procedure TMSMQMessage.Set_Label_(const pbstrLabel: WideString);
  { Warning: The property Label_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Label_ := pbstrLabel;
end;

function TMSMQMessage.Get_MaxTimeToReachQueue: Integer;
begin
    Result := DefaultInterface.MaxTimeToReachQueue;
end;

procedure TMSMQMessage.Set_MaxTimeToReachQueue(plMaxTimeToReachQueue: Integer);
begin
  DefaultInterface.Set_MaxTimeToReachQueue(plMaxTimeToReachQueue);
end;

function TMSMQMessage.Get_MaxTimeToReceive: Integer;
begin
    Result := DefaultInterface.MaxTimeToReceive;
end;

procedure TMSMQMessage.Set_MaxTimeToReceive(plMaxTimeToReceive: Integer);
begin
  DefaultInterface.Set_MaxTimeToReceive(plMaxTimeToReceive);
end;

function TMSMQMessage.Get_HashAlgorithm: Integer;
begin
    Result := DefaultInterface.HashAlgorithm;
end;

procedure TMSMQMessage.Set_HashAlgorithm(plHashAlg: Integer);
begin
  DefaultInterface.Set_HashAlgorithm(plHashAlg);
end;

function TMSMQMessage.Get_EncryptAlgorithm: Integer;
begin
    Result := DefaultInterface.EncryptAlgorithm;
end;

procedure TMSMQMessage.Set_EncryptAlgorithm(plEncryptAlg: Integer);
begin
  DefaultInterface.Set_EncryptAlgorithm(plEncryptAlg);
end;

function TMSMQMessage.Get_SentTime: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.SentTime;
end;

function TMSMQMessage.Get_ArrivedTime: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.ArrivedTime;
end;

function TMSMQMessage.Get_DestinationQueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.DestinationQueueInfo;
end;

function TMSMQMessage.Get_SenderCertificate: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.SenderCertificate;
end;

procedure TMSMQMessage.Set_SenderCertificate(pvarSenderCert: OleVariant);
begin
  DefaultInterface.Set_SenderCertificate(pvarSenderCert);
end;

function TMSMQMessage.Get_SenderId: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.SenderId;
end;

function TMSMQMessage.Get_SenderIdType: Integer;
begin
    Result := DefaultInterface.SenderIdType;
end;

procedure TMSMQMessage.Set_SenderIdType(plSenderIdType: Integer);
begin
  DefaultInterface.Set_SenderIdType(plSenderIdType);
end;

function TMSMQMessage.Get_SenderVersion: Integer;
begin
    Result := DefaultInterface.SenderVersion;
end;

function TMSMQMessage.Get_Extension: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Extension;
end;

procedure TMSMQMessage.Set_Extension(pvarExtension: OleVariant);
begin
  DefaultInterface.Set_Extension(pvarExtension);
end;

function TMSMQMessage.Get_ConnectorTypeGuid: WideString;
begin
    Result := DefaultInterface.ConnectorTypeGuid;
end;

procedure TMSMQMessage.Set_ConnectorTypeGuid(const pbstrGuidConnectorType: WideString);
  { Warning: The property ConnectorTypeGuid has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConnectorTypeGuid := pbstrGuidConnectorType;
end;

function TMSMQMessage.Get_TransactionStatusQueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.TransactionStatusQueueInfo;
end;

function TMSMQMessage.Get_DestinationSymmetricKey: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.DestinationSymmetricKey;
end;

procedure TMSMQMessage.Set_DestinationSymmetricKey(pvarDestSymmKey: OleVariant);
begin
  DefaultInterface.Set_DestinationSymmetricKey(pvarDestSymmKey);
end;

function TMSMQMessage.Get_Signature: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Signature;
end;

procedure TMSMQMessage.Set_Signature(pvarSignature: OleVariant);
begin
  DefaultInterface.Set_Signature(pvarSignature);
end;

function TMSMQMessage.Get_AuthenticationProviderType: Integer;
begin
    Result := DefaultInterface.AuthenticationProviderType;
end;

procedure TMSMQMessage.Set_AuthenticationProviderType(plAuthProvType: Integer);
begin
  DefaultInterface.Set_AuthenticationProviderType(plAuthProvType);
end;

function TMSMQMessage.Get_AuthenticationProviderName: WideString;
begin
    Result := DefaultInterface.AuthenticationProviderName;
end;

procedure TMSMQMessage.Set_AuthenticationProviderName(const pbstrAuthProvName: WideString);
  { Warning: The property AuthenticationProviderName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuthenticationProviderName := pbstrAuthProvName;
end;

procedure TMSMQMessage.Set_SenderId(pvarSenderId: OleVariant);
begin
  DefaultInterface.Set_SenderId(pvarSenderId);
end;

function TMSMQMessage.Get_MsgClass: Integer;
begin
    Result := DefaultInterface.MsgClass;
end;

procedure TMSMQMessage.Set_MsgClass(plMsgClass: Integer);
begin
  DefaultInterface.Set_MsgClass(plMsgClass);
end;

function TMSMQMessage.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQMessage.Get_TransactionId: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.TransactionId;
end;

function TMSMQMessage.Get_IsFirstInTransaction: Smallint;
begin
    Result := DefaultInterface.IsFirstInTransaction;
end;

function TMSMQMessage.Get_IsLastInTransaction: Smallint;
begin
    Result := DefaultInterface.IsLastInTransaction;
end;

function TMSMQMessage.Get_ResponseQueueInfo_v2: IMSMQQueueInfo2;
begin
    Result := DefaultInterface.ResponseQueueInfo_v2;
end;

procedure TMSMQMessage._Set_ResponseQueueInfo_v2(const ppqinfoResponse: IMSMQQueueInfo2);
  { Warning: The property ResponseQueueInfo_v2 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ResponseQueueInfo_v2 := ppqinfoResponse;
end;

function TMSMQMessage.Get_AdminQueueInfo_v2: IMSMQQueueInfo2;
begin
    Result := DefaultInterface.AdminQueueInfo_v2;
end;

procedure TMSMQMessage._Set_AdminQueueInfo_v2(const ppqinfoAdmin: IMSMQQueueInfo2);
  { Warning: The property AdminQueueInfo_v2 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdminQueueInfo_v2 := ppqinfoAdmin;
end;

function TMSMQMessage.Get_ReceivedAuthenticationLevel: Smallint;
begin
    Result := DefaultInterface.ReceivedAuthenticationLevel;
end;

function TMSMQMessage.Get_ResponseQueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.ResponseQueueInfo;
end;

procedure TMSMQMessage._Set_ResponseQueueInfo(const ppqinfoResponse: IMSMQQueueInfo3);
  { Warning: The property ResponseQueueInfo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ResponseQueueInfo := ppqinfoResponse;
end;

function TMSMQMessage.Get_AdminQueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.AdminQueueInfo;
end;

procedure TMSMQMessage._Set_AdminQueueInfo(const ppqinfoAdmin: IMSMQQueueInfo3);
  { Warning: The property AdminQueueInfo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdminQueueInfo := ppqinfoAdmin;
end;

function TMSMQMessage.Get_ResponseDestination: IDispatch;
begin
    Result := DefaultInterface.ResponseDestination;
end;

procedure TMSMQMessage._Set_ResponseDestination(const ppdestResponse: IDispatch);
  { Warning: The property ResponseDestination has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ResponseDestination := ppdestResponse;
end;

function TMSMQMessage.Get_Destination: IDispatch;
begin
    Result := DefaultInterface.Destination;
end;

function TMSMQMessage.Get_LookupId: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.LookupId;
end;

function TMSMQMessage.Get_IsAuthenticated2: WordBool;
begin
    Result := DefaultInterface.IsAuthenticated2;
end;

function TMSMQMessage.Get_IsFirstInTransaction2: WordBool;
begin
    Result := DefaultInterface.IsFirstInTransaction2;
end;

function TMSMQMessage.Get_IsLastInTransaction2: WordBool;
begin
    Result := DefaultInterface.IsLastInTransaction2;
end;

function TMSMQMessage.Get_SoapEnvelope: WideString;
begin
    Result := DefaultInterface.SoapEnvelope;
end;

function TMSMQMessage.Get_CompoundMessage: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.CompoundMessage;
end;

procedure TMSMQMessage.Set_SoapHeader(const Param1: WideString);
  { Warning: The property SoapHeader has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SoapHeader := Param1;
end;

procedure TMSMQMessage.Set_SoapBody(const Param1: WideString);
  { Warning: The property SoapBody has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SoapBody := Param1;
end;

procedure TMSMQMessage.Send(const DestinationQueue: IDispatch);
begin
  DefaultInterface.Send(DestinationQueue, EmptyParam);
end;

procedure TMSMQMessage.Send(const DestinationQueue: IDispatch; var Transaction: OleVariant);
begin
  DefaultInterface.Send(DestinationQueue, Transaction);
end;

procedure TMSMQMessage.AttachCurrentSecurityContext;
begin
  DefaultInterface.AttachCurrentSecurityContext;
end;

procedure TMSMQMessage.AttachCurrentSecurityContext2;
begin
  DefaultInterface.AttachCurrentSecurityContext2;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQMessageProperties.Create(AServer: TMSMQMessage);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQMessageProperties.GetDefaultInterface: IMSMQMessage3;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQMessageProperties.Get_Class_: Integer;
begin
    Result := DefaultInterface.Class_;
end;

function TMSMQMessageProperties.Get_PrivLevel: Integer;
begin
    Result := DefaultInterface.PrivLevel;
end;

procedure TMSMQMessageProperties.Set_PrivLevel(plPrivLevel: Integer);
begin
  DefaultInterface.Set_PrivLevel(plPrivLevel);
end;

function TMSMQMessageProperties.Get_AuthLevel: Integer;
begin
    Result := DefaultInterface.AuthLevel;
end;

procedure TMSMQMessageProperties.Set_AuthLevel(plAuthLevel: Integer);
begin
  DefaultInterface.Set_AuthLevel(plAuthLevel);
end;

function TMSMQMessageProperties.Get_IsAuthenticated: Smallint;
begin
    Result := DefaultInterface.IsAuthenticated;
end;

function TMSMQMessageProperties.Get_Delivery: Integer;
begin
    Result := DefaultInterface.Delivery;
end;

procedure TMSMQMessageProperties.Set_Delivery(plDelivery: Integer);
begin
  DefaultInterface.Set_Delivery(plDelivery);
end;

function TMSMQMessageProperties.Get_Trace: Integer;
begin
    Result := DefaultInterface.Trace;
end;

procedure TMSMQMessageProperties.Set_Trace(plTrace: Integer);
begin
  DefaultInterface.Set_Trace(plTrace);
end;

function TMSMQMessageProperties.Get_Priority: Integer;
begin
    Result := DefaultInterface.Priority;
end;

procedure TMSMQMessageProperties.Set_Priority(plPriority: Integer);
begin
  DefaultInterface.Set_Priority(plPriority);
end;

function TMSMQMessageProperties.Get_Journal: Integer;
begin
    Result := DefaultInterface.Journal;
end;

procedure TMSMQMessageProperties.Set_Journal(plJournal: Integer);
begin
  DefaultInterface.Set_Journal(plJournal);
end;

function TMSMQMessageProperties.Get_ResponseQueueInfo_v1: IMSMQQueueInfo;
begin
    Result := DefaultInterface.ResponseQueueInfo_v1;
end;

procedure TMSMQMessageProperties._Set_ResponseQueueInfo_v1(const ppqinfoResponse: IMSMQQueueInfo);
  { Warning: The property ResponseQueueInfo_v1 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ResponseQueueInfo_v1 := ppqinfoResponse;
end;

function TMSMQMessageProperties.Get_AppSpecific: Integer;
begin
    Result := DefaultInterface.AppSpecific;
end;

procedure TMSMQMessageProperties.Set_AppSpecific(plAppSpecific: Integer);
begin
  DefaultInterface.Set_AppSpecific(plAppSpecific);
end;

function TMSMQMessageProperties.Get_SourceMachineGuid: WideString;
begin
    Result := DefaultInterface.SourceMachineGuid;
end;

function TMSMQMessageProperties.Get_BodyLength: Integer;
begin
    Result := DefaultInterface.BodyLength;
end;

function TMSMQMessageProperties.Get_Body: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Body;
end;

procedure TMSMQMessageProperties.Set_Body(pvarBody: OleVariant);
begin
  DefaultInterface.Set_Body(pvarBody);
end;

function TMSMQMessageProperties.Get_AdminQueueInfo_v1: IMSMQQueueInfo;
begin
    Result := DefaultInterface.AdminQueueInfo_v1;
end;

procedure TMSMQMessageProperties._Set_AdminQueueInfo_v1(const ppqinfoAdmin: IMSMQQueueInfo);
  { Warning: The property AdminQueueInfo_v1 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdminQueueInfo_v1 := ppqinfoAdmin;
end;

function TMSMQMessageProperties.Get_Id: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Id;
end;

function TMSMQMessageProperties.Get_CorrelationId: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.CorrelationId;
end;

procedure TMSMQMessageProperties.Set_CorrelationId(pvarMsgId: OleVariant);
begin
  DefaultInterface.Set_CorrelationId(pvarMsgId);
end;

function TMSMQMessageProperties.Get_Ack: Integer;
begin
    Result := DefaultInterface.Ack;
end;

procedure TMSMQMessageProperties.Set_Ack(plAck: Integer);
begin
  DefaultInterface.Set_Ack(plAck);
end;

function TMSMQMessageProperties.Get_Label_: WideString;
begin
    Result := DefaultInterface.Label_;
end;

procedure TMSMQMessageProperties.Set_Label_(const pbstrLabel: WideString);
  { Warning: The property Label_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Label_ := pbstrLabel;
end;

function TMSMQMessageProperties.Get_MaxTimeToReachQueue: Integer;
begin
    Result := DefaultInterface.MaxTimeToReachQueue;
end;

procedure TMSMQMessageProperties.Set_MaxTimeToReachQueue(plMaxTimeToReachQueue: Integer);
begin
  DefaultInterface.Set_MaxTimeToReachQueue(plMaxTimeToReachQueue);
end;

function TMSMQMessageProperties.Get_MaxTimeToReceive: Integer;
begin
    Result := DefaultInterface.MaxTimeToReceive;
end;

procedure TMSMQMessageProperties.Set_MaxTimeToReceive(plMaxTimeToReceive: Integer);
begin
  DefaultInterface.Set_MaxTimeToReceive(plMaxTimeToReceive);
end;

function TMSMQMessageProperties.Get_HashAlgorithm: Integer;
begin
    Result := DefaultInterface.HashAlgorithm;
end;

procedure TMSMQMessageProperties.Set_HashAlgorithm(plHashAlg: Integer);
begin
  DefaultInterface.Set_HashAlgorithm(plHashAlg);
end;

function TMSMQMessageProperties.Get_EncryptAlgorithm: Integer;
begin
    Result := DefaultInterface.EncryptAlgorithm;
end;

procedure TMSMQMessageProperties.Set_EncryptAlgorithm(plEncryptAlg: Integer);
begin
  DefaultInterface.Set_EncryptAlgorithm(plEncryptAlg);
end;

function TMSMQMessageProperties.Get_SentTime: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.SentTime;
end;

function TMSMQMessageProperties.Get_ArrivedTime: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.ArrivedTime;
end;

function TMSMQMessageProperties.Get_DestinationQueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.DestinationQueueInfo;
end;

function TMSMQMessageProperties.Get_SenderCertificate: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.SenderCertificate;
end;

procedure TMSMQMessageProperties.Set_SenderCertificate(pvarSenderCert: OleVariant);
begin
  DefaultInterface.Set_SenderCertificate(pvarSenderCert);
end;

function TMSMQMessageProperties.Get_SenderId: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.SenderId;
end;

function TMSMQMessageProperties.Get_SenderIdType: Integer;
begin
    Result := DefaultInterface.SenderIdType;
end;

procedure TMSMQMessageProperties.Set_SenderIdType(plSenderIdType: Integer);
begin
  DefaultInterface.Set_SenderIdType(plSenderIdType);
end;

function TMSMQMessageProperties.Get_SenderVersion: Integer;
begin
    Result := DefaultInterface.SenderVersion;
end;

function TMSMQMessageProperties.Get_Extension: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Extension;
end;

procedure TMSMQMessageProperties.Set_Extension(pvarExtension: OleVariant);
begin
  DefaultInterface.Set_Extension(pvarExtension);
end;

function TMSMQMessageProperties.Get_ConnectorTypeGuid: WideString;
begin
    Result := DefaultInterface.ConnectorTypeGuid;
end;

procedure TMSMQMessageProperties.Set_ConnectorTypeGuid(const pbstrGuidConnectorType: WideString);
  { Warning: The property ConnectorTypeGuid has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ConnectorTypeGuid := pbstrGuidConnectorType;
end;

function TMSMQMessageProperties.Get_TransactionStatusQueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.TransactionStatusQueueInfo;
end;

function TMSMQMessageProperties.Get_DestinationSymmetricKey: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.DestinationSymmetricKey;
end;

procedure TMSMQMessageProperties.Set_DestinationSymmetricKey(pvarDestSymmKey: OleVariant);
begin
  DefaultInterface.Set_DestinationSymmetricKey(pvarDestSymmKey);
end;

function TMSMQMessageProperties.Get_Signature: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Signature;
end;

procedure TMSMQMessageProperties.Set_Signature(pvarSignature: OleVariant);
begin
  DefaultInterface.Set_Signature(pvarSignature);
end;

function TMSMQMessageProperties.Get_AuthenticationProviderType: Integer;
begin
    Result := DefaultInterface.AuthenticationProviderType;
end;

procedure TMSMQMessageProperties.Set_AuthenticationProviderType(plAuthProvType: Integer);
begin
  DefaultInterface.Set_AuthenticationProviderType(plAuthProvType);
end;

function TMSMQMessageProperties.Get_AuthenticationProviderName: WideString;
begin
    Result := DefaultInterface.AuthenticationProviderName;
end;

procedure TMSMQMessageProperties.Set_AuthenticationProviderName(const pbstrAuthProvName: WideString);
  { Warning: The property AuthenticationProviderName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AuthenticationProviderName := pbstrAuthProvName;
end;

procedure TMSMQMessageProperties.Set_SenderId(pvarSenderId: OleVariant);
begin
  DefaultInterface.Set_SenderId(pvarSenderId);
end;

function TMSMQMessageProperties.Get_MsgClass: Integer;
begin
    Result := DefaultInterface.MsgClass;
end;

procedure TMSMQMessageProperties.Set_MsgClass(plMsgClass: Integer);
begin
  DefaultInterface.Set_MsgClass(plMsgClass);
end;

function TMSMQMessageProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQMessageProperties.Get_TransactionId: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.TransactionId;
end;

function TMSMQMessageProperties.Get_IsFirstInTransaction: Smallint;
begin
    Result := DefaultInterface.IsFirstInTransaction;
end;

function TMSMQMessageProperties.Get_IsLastInTransaction: Smallint;
begin
    Result := DefaultInterface.IsLastInTransaction;
end;

function TMSMQMessageProperties.Get_ResponseQueueInfo_v2: IMSMQQueueInfo2;
begin
    Result := DefaultInterface.ResponseQueueInfo_v2;
end;

procedure TMSMQMessageProperties._Set_ResponseQueueInfo_v2(const ppqinfoResponse: IMSMQQueueInfo2);
  { Warning: The property ResponseQueueInfo_v2 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ResponseQueueInfo_v2 := ppqinfoResponse;
end;

function TMSMQMessageProperties.Get_AdminQueueInfo_v2: IMSMQQueueInfo2;
begin
    Result := DefaultInterface.AdminQueueInfo_v2;
end;

procedure TMSMQMessageProperties._Set_AdminQueueInfo_v2(const ppqinfoAdmin: IMSMQQueueInfo2);
  { Warning: The property AdminQueueInfo_v2 has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdminQueueInfo_v2 := ppqinfoAdmin;
end;

function TMSMQMessageProperties.Get_ReceivedAuthenticationLevel: Smallint;
begin
    Result := DefaultInterface.ReceivedAuthenticationLevel;
end;

function TMSMQMessageProperties.Get_ResponseQueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.ResponseQueueInfo;
end;

procedure TMSMQMessageProperties._Set_ResponseQueueInfo(const ppqinfoResponse: IMSMQQueueInfo3);
  { Warning: The property ResponseQueueInfo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ResponseQueueInfo := ppqinfoResponse;
end;

function TMSMQMessageProperties.Get_AdminQueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.AdminQueueInfo;
end;

procedure TMSMQMessageProperties._Set_AdminQueueInfo(const ppqinfoAdmin: IMSMQQueueInfo3);
  { Warning: The property AdminQueueInfo has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.AdminQueueInfo := ppqinfoAdmin;
end;

function TMSMQMessageProperties.Get_ResponseDestination: IDispatch;
begin
    Result := DefaultInterface.ResponseDestination;
end;

procedure TMSMQMessageProperties._Set_ResponseDestination(const ppdestResponse: IDispatch);
  { Warning: The property ResponseDestination has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ResponseDestination := ppdestResponse;
end;

function TMSMQMessageProperties.Get_Destination: IDispatch;
begin
    Result := DefaultInterface.Destination;
end;

function TMSMQMessageProperties.Get_LookupId: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.LookupId;
end;

function TMSMQMessageProperties.Get_IsAuthenticated2: WordBool;
begin
    Result := DefaultInterface.IsAuthenticated2;
end;

function TMSMQMessageProperties.Get_IsFirstInTransaction2: WordBool;
begin
    Result := DefaultInterface.IsFirstInTransaction2;
end;

function TMSMQMessageProperties.Get_IsLastInTransaction2: WordBool;
begin
    Result := DefaultInterface.IsLastInTransaction2;
end;

function TMSMQMessageProperties.Get_SoapEnvelope: WideString;
begin
    Result := DefaultInterface.SoapEnvelope;
end;

function TMSMQMessageProperties.Get_CompoundMessage: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.CompoundMessage;
end;

procedure TMSMQMessageProperties.Set_SoapHeader(const Param1: WideString);
  { Warning: The property SoapHeader has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SoapHeader := Param1;
end;

procedure TMSMQMessageProperties.Set_SoapBody(const Param1: WideString);
  { Warning: The property SoapBody has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SoapBody := Param1;
end;

{$ENDIF}

class function CoMSMQQueue.Create: IMSMQQueue3;
begin
  Result := CreateComObject(CLASS_MSMQQueue) as IMSMQQueue3;
end;

class function CoMSMQQueue.CreateRemote(const MachineName: string): IMSMQQueue3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQQueue) as IMSMQQueue3;
end;

procedure TMSMQQueue.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D7D6E079-DCCD-11D0-AA4B-0060970DEBAE}';
    IntfIID:   '{EBA96B1B-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQQueue.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQQueue3;
  end;
end;

procedure TMSMQQueue.ConnectTo(svrIntf: IMSMQQueue3);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQQueue.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQQueue.GetDefaultInterface: IMSMQQueue3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQQueue.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQQueueProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQQueue.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQQueue.GetServerProperties: TMSMQQueueProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQQueue.Get_Access: Integer;
begin
    Result := DefaultInterface.Access;
end;

function TMSMQQueue.Get_ShareMode: Integer;
begin
    Result := DefaultInterface.ShareMode;
end;

function TMSMQQueue.Get_QueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.QueueInfo;
end;

function TMSMQQueue.Get_Handle: Integer;
begin
    Result := DefaultInterface.Handle;
end;

function TMSMQQueue.Get_IsOpen: Smallint;
begin
    Result := DefaultInterface.IsOpen;
end;

function TMSMQQueue.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQQueue.Get_Handle2: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Handle2;
end;

function TMSMQQueue.Get_IsOpen2: WordBool;
begin
    Result := DefaultInterface.IsOpen2;
end;

procedure TMSMQQueue.Close;
begin
  DefaultInterface.Close;
end;

function TMSMQQueue.Receive_v1: IMSMQMessage;
begin
  Result := DefaultInterface.Receive_v1(EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Receive_v1(var Transaction: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.Receive_v1(Transaction, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.Receive_v1(Transaction, WantDestinationQueue, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                               var WantBody: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.Receive_v1(Transaction, WantDestinationQueue, WantBody, EmptyParam);
end;

function TMSMQQueue.Receive_v1(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                               var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.Receive_v1(Transaction, WantDestinationQueue, WantBody, ReceiveTimeout);
end;

function TMSMQQueue.Peek_v1: IMSMQMessage;
begin
  Result := DefaultInterface.Peek_v1(EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Peek_v1(var WantDestinationQueue: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.Peek_v1(WantDestinationQueue, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Peek_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.Peek_v1(WantDestinationQueue, WantBody, EmptyParam);
end;

function TMSMQQueue.Peek_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                            var ReceiveTimeout: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.Peek_v1(WantDestinationQueue, WantBody, ReceiveTimeout);
end;

procedure TMSMQQueue.EnableNotification(const Event: IMSMQEvent3);
begin
  DefaultInterface.EnableNotification(Event, EmptyParam, EmptyParam);
end;

procedure TMSMQQueue.EnableNotification(const Event: IMSMQEvent3; var Cursor: OleVariant);
begin
  DefaultInterface.EnableNotification(Event, Cursor, EmptyParam);
end;

procedure TMSMQQueue.EnableNotification(const Event: IMSMQEvent3; var Cursor: OleVariant; 
                                        var ReceiveTimeout: OleVariant);
begin
  DefaultInterface.EnableNotification(Event, Cursor, ReceiveTimeout);
end;

procedure TMSMQQueue.Reset;
begin
  DefaultInterface.Reset;
end;

function TMSMQQueue.ReceiveCurrent_v1: IMSMQMessage;
begin
  Result := DefaultInterface.ReceiveCurrent_v1(EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveCurrent_v1(var Transaction: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.ReceiveCurrent_v1(Transaction, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveCurrent_v1(var Transaction: OleVariant; 
                                      var WantDestinationQueue: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.ReceiveCurrent_v1(Transaction, WantDestinationQueue, EmptyParam, 
                                               EmptyParam);
end;

function TMSMQQueue.ReceiveCurrent_v1(var Transaction: OleVariant; 
                                      var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.ReceiveCurrent_v1(Transaction, WantDestinationQueue, WantBody, 
                                               EmptyParam);
end;

function TMSMQQueue.ReceiveCurrent_v1(var Transaction: OleVariant; 
                                      var WantDestinationQueue: OleVariant; 
                                      var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.ReceiveCurrent_v1(Transaction, WantDestinationQueue, WantBody, 
                                               ReceiveTimeout);
end;

function TMSMQQueue.PeekNext_v1: IMSMQMessage;
begin
  Result := DefaultInterface.PeekNext_v1(EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekNext_v1(var WantDestinationQueue: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.PeekNext_v1(WantDestinationQueue, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekNext_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.PeekNext_v1(WantDestinationQueue, WantBody, EmptyParam);
end;

function TMSMQQueue.PeekNext_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                var ReceiveTimeout: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.PeekNext_v1(WantDestinationQueue, WantBody, ReceiveTimeout);
end;

function TMSMQQueue.PeekCurrent_v1: IMSMQMessage;
begin
  Result := DefaultInterface.PeekCurrent_v1(EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekCurrent_v1(var WantDestinationQueue: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.PeekCurrent_v1(WantDestinationQueue, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekCurrent_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.PeekCurrent_v1(WantDestinationQueue, WantBody, EmptyParam);
end;

function TMSMQQueue.PeekCurrent_v1(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                   var ReceiveTimeout: OleVariant): IMSMQMessage;
begin
  Result := DefaultInterface.PeekCurrent_v1(WantDestinationQueue, WantBody, ReceiveTimeout);
end;

function TMSMQQueue.Receive: IMSMQMessage3;
begin
  Result := DefaultInterface.Receive(EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Receive(var Transaction: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.Receive(Transaction, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.Receive(Transaction, WantDestinationQueue, EmptyParam, EmptyParam, 
                                     EmptyParam);
end;

function TMSMQQueue.Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.Receive(Transaction, WantDestinationQueue, WantBody, EmptyParam, 
                                     EmptyParam);
end;

function TMSMQQueue.Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.Receive(Transaction, WantDestinationQueue, WantBody, ReceiveTimeout, 
                                     EmptyParam);
end;

function TMSMQQueue.Receive(var Transaction: OleVariant; var WantDestinationQueue: OleVariant; 
                            var WantBody: OleVariant; var ReceiveTimeout: OleVariant; 
                            var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.Receive(Transaction, WantDestinationQueue, WantBody, ReceiveTimeout, 
                                     WantConnectorType);
end;

function TMSMQQueue.Peek: IMSMQMessage3;
begin
  Result := DefaultInterface.Peek(EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Peek(var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.Peek(WantDestinationQueue, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.Peek(WantDestinationQueue, WantBody, EmptyParam, EmptyParam);
end;

function TMSMQQueue.Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.Peek(WantDestinationQueue, WantBody, ReceiveTimeout, EmptyParam);
end;

function TMSMQQueue.Peek(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                         var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.Peek(WantDestinationQueue, WantBody, ReceiveTimeout, WantConnectorType);
end;

function TMSMQQueue.ReceiveCurrent: IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveCurrent(EmptyParam, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQueue.ReceiveCurrent(var Transaction: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveCurrent(Transaction, EmptyParam, EmptyParam, EmptyParam, 
                                            EmptyParam);
end;

function TMSMQQueue.ReceiveCurrent(var Transaction: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveCurrent(Transaction, WantDestinationQueue, EmptyParam, 
                                            EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveCurrent(var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveCurrent(Transaction, WantDestinationQueue, WantBody, 
                                            EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveCurrent(var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                   var ReceiveTimeout: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveCurrent(Transaction, WantDestinationQueue, WantBody, 
                                            ReceiveTimeout, EmptyParam);
end;

function TMSMQQueue.ReceiveCurrent(var Transaction: OleVariant; 
                                   var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                   var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveCurrent(Transaction, WantDestinationQueue, WantBody, 
                                            ReceiveTimeout, WantConnectorType);
end;

function TMSMQQueue.PeekNext: IMSMQMessage3;
begin
  Result := DefaultInterface.PeekNext(EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekNext(var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekNext(WantDestinationQueue, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekNext(WantDestinationQueue, WantBody, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                             var ReceiveTimeout: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekNext(WantDestinationQueue, WantBody, ReceiveTimeout, EmptyParam);
end;

function TMSMQQueue.PeekNext(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                             var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekNext(WantDestinationQueue, WantBody, ReceiveTimeout, 
                                      WantConnectorType);
end;

function TMSMQQueue.PeekCurrent: IMSMQMessage3;
begin
  Result := DefaultInterface.PeekCurrent(EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekCurrent(var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekCurrent(WantDestinationQueue, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekCurrent(WantDestinationQueue, WantBody, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                var ReceiveTimeout: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekCurrent(WantDestinationQueue, WantBody, ReceiveTimeout, EmptyParam);
end;

function TMSMQQueue.PeekCurrent(var WantDestinationQueue: OleVariant; var WantBody: OleVariant; 
                                var ReceiveTimeout: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekCurrent(WantDestinationQueue, WantBody, ReceiveTimeout, 
                                         WantConnectorType);
end;

function TMSMQQueue.ReceiveByLookupId(LookupId: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveByLookupId(LookupId, EmptyParam, EmptyParam, EmptyParam, 
                                               EmptyParam);
end;

function TMSMQQueue.ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveByLookupId(LookupId, Transaction, EmptyParam, EmptyParam, 
                                               EmptyParam);
end;

function TMSMQQueue.ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                      var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveByLookupId(LookupId, Transaction, WantDestinationQueue, 
                                               EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                      var WantDestinationQueue: OleVariant; var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveByLookupId(LookupId, Transaction, WantDestinationQueue, 
                                               WantBody, EmptyParam);
end;

function TMSMQQueue.ReceiveByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                      var WantDestinationQueue: OleVariant; 
                                      var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveByLookupId(LookupId, Transaction, WantDestinationQueue, 
                                               WantBody, WantConnectorType);
end;

function TMSMQQueue.ReceiveNextByLookupId(LookupId: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveNextByLookupId(LookupId, EmptyParam, EmptyParam, EmptyParam, 
                                                   EmptyParam);
end;

function TMSMQQueue.ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveNextByLookupId(LookupId, Transaction, EmptyParam, EmptyParam, 
                                                   EmptyParam);
end;

function TMSMQQueue.ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                          var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveNextByLookupId(LookupId, Transaction, WantDestinationQueue, 
                                                   EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                          var WantDestinationQueue: OleVariant; 
                                          var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveNextByLookupId(LookupId, Transaction, WantDestinationQueue, 
                                                   WantBody, EmptyParam);
end;

function TMSMQQueue.ReceiveNextByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                          var WantDestinationQueue: OleVariant; 
                                          var WantBody: OleVariant; 
                                          var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveNextByLookupId(LookupId, Transaction, WantDestinationQueue, 
                                                   WantBody, WantConnectorType);
end;

function TMSMQQueue.ReceivePreviousByLookupId(LookupId: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceivePreviousByLookupId(LookupId, EmptyParam, EmptyParam, 
                                                       EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceivePreviousByLookupId(LookupId, Transaction, EmptyParam, 
                                                       EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                              var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceivePreviousByLookupId(LookupId, Transaction, WantDestinationQueue, 
                                                       EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                              var WantDestinationQueue: OleVariant; 
                                              var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceivePreviousByLookupId(LookupId, Transaction, WantDestinationQueue, 
                                                       WantBody, EmptyParam);
end;

function TMSMQQueue.ReceivePreviousByLookupId(LookupId: OleVariant; var Transaction: OleVariant; 
                                              var WantDestinationQueue: OleVariant; 
                                              var WantBody: OleVariant; 
                                              var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceivePreviousByLookupId(LookupId, Transaction, WantDestinationQueue, 
                                                       WantBody, WantConnectorType);
end;

function TMSMQQueue.ReceiveFirstByLookupId: IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveFirstByLookupId(EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveFirstByLookupId(var Transaction: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveFirstByLookupId(Transaction, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveFirstByLookupId(var Transaction: OleVariant; 
                                           var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveFirstByLookupId(Transaction, WantDestinationQueue, EmptyParam, 
                                                    EmptyParam);
end;

function TMSMQQueue.ReceiveFirstByLookupId(var Transaction: OleVariant; 
                                           var WantDestinationQueue: OleVariant; 
                                           var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveFirstByLookupId(Transaction, WantDestinationQueue, WantBody, 
                                                    EmptyParam);
end;

function TMSMQQueue.ReceiveFirstByLookupId(var Transaction: OleVariant; 
                                           var WantDestinationQueue: OleVariant; 
                                           var WantBody: OleVariant; 
                                           var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveFirstByLookupId(Transaction, WantDestinationQueue, WantBody, 
                                                    WantConnectorType);
end;

function TMSMQQueue.ReceiveLastByLookupId: IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveLastByLookupId(EmptyParam, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveLastByLookupId(var Transaction: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveLastByLookupId(Transaction, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.ReceiveLastByLookupId(var Transaction: OleVariant; 
                                          var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveLastByLookupId(Transaction, WantDestinationQueue, EmptyParam, 
                                                   EmptyParam);
end;

function TMSMQQueue.ReceiveLastByLookupId(var Transaction: OleVariant; 
                                          var WantDestinationQueue: OleVariant; 
                                          var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveLastByLookupId(Transaction, WantDestinationQueue, WantBody, 
                                                   EmptyParam);
end;

function TMSMQQueue.ReceiveLastByLookupId(var Transaction: OleVariant; 
                                          var WantDestinationQueue: OleVariant; 
                                          var WantBody: OleVariant; 
                                          var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.ReceiveLastByLookupId(Transaction, WantDestinationQueue, WantBody, 
                                                   WantConnectorType);
end;

function TMSMQQueue.PeekByLookupId(LookupId: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekByLookupId(LookupId, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekByLookupId(LookupId, WantDestinationQueue, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                   var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekByLookupId(LookupId, WantDestinationQueue, WantBody, EmptyParam);
end;

function TMSMQQueue.PeekByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                   var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekByLookupId(LookupId, WantDestinationQueue, WantBody, 
                                            WantConnectorType);
end;

function TMSMQQueue.PeekNextByLookupId(LookupId: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekNextByLookupId(LookupId, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekNextByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekNextByLookupId(LookupId, WantDestinationQueue, EmptyParam, 
                                                EmptyParam);
end;

function TMSMQQueue.PeekNextByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                       var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekNextByLookupId(LookupId, WantDestinationQueue, WantBody, EmptyParam);
end;

function TMSMQQueue.PeekNextByLookupId(LookupId: OleVariant; var WantDestinationQueue: OleVariant; 
                                       var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekNextByLookupId(LookupId, WantDestinationQueue, WantBody, 
                                                WantConnectorType);
end;

function TMSMQQueue.PeekPreviousByLookupId(LookupId: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekPreviousByLookupId(LookupId, EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekPreviousByLookupId(LookupId: OleVariant; 
                                           var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekPreviousByLookupId(LookupId, WantDestinationQueue, EmptyParam, 
                                                    EmptyParam);
end;

function TMSMQQueue.PeekPreviousByLookupId(LookupId: OleVariant; 
                                           var WantDestinationQueue: OleVariant; 
                                           var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekPreviousByLookupId(LookupId, WantDestinationQueue, WantBody, 
                                                    EmptyParam);
end;

function TMSMQQueue.PeekPreviousByLookupId(LookupId: OleVariant; 
                                           var WantDestinationQueue: OleVariant; 
                                           var WantBody: OleVariant; 
                                           var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekPreviousByLookupId(LookupId, WantDestinationQueue, WantBody, 
                                                    WantConnectorType);
end;

function TMSMQQueue.PeekFirstByLookupId: IMSMQMessage3;
begin
  Result := DefaultInterface.PeekFirstByLookupId(EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekFirstByLookupId(var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekFirstByLookupId(WantDestinationQueue, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekFirstByLookupId(var WantDestinationQueue: OleVariant; 
                                        var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekFirstByLookupId(WantDestinationQueue, WantBody, EmptyParam);
end;

function TMSMQQueue.PeekFirstByLookupId(var WantDestinationQueue: OleVariant; 
                                        var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekFirstByLookupId(WantDestinationQueue, WantBody, WantConnectorType);
end;

function TMSMQQueue.PeekLastByLookupId: IMSMQMessage3;
begin
  Result := DefaultInterface.PeekLastByLookupId(EmptyParam, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekLastByLookupId(var WantDestinationQueue: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekLastByLookupId(WantDestinationQueue, EmptyParam, EmptyParam);
end;

function TMSMQQueue.PeekLastByLookupId(var WantDestinationQueue: OleVariant; 
                                       var WantBody: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekLastByLookupId(WantDestinationQueue, WantBody, EmptyParam);
end;

function TMSMQQueue.PeekLastByLookupId(var WantDestinationQueue: OleVariant; 
                                       var WantBody: OleVariant; var WantConnectorType: OleVariant): IMSMQMessage3;
begin
  Result := DefaultInterface.PeekLastByLookupId(WantDestinationQueue, WantBody, WantConnectorType);
end;

procedure TMSMQQueue.Purge;
begin
  DefaultInterface.Purge;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQQueueProperties.Create(AServer: TMSMQQueue);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQQueueProperties.GetDefaultInterface: IMSMQQueue3;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQQueueProperties.Get_Access: Integer;
begin
    Result := DefaultInterface.Access;
end;

function TMSMQQueueProperties.Get_ShareMode: Integer;
begin
    Result := DefaultInterface.ShareMode;
end;

function TMSMQQueueProperties.Get_QueueInfo: IMSMQQueueInfo3;
begin
    Result := DefaultInterface.QueueInfo;
end;

function TMSMQQueueProperties.Get_Handle: Integer;
begin
    Result := DefaultInterface.Handle;
end;

function TMSMQQueueProperties.Get_IsOpen: Smallint;
begin
    Result := DefaultInterface.IsOpen;
end;

function TMSMQQueueProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQQueueProperties.Get_Handle2: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Handle2;
end;

function TMSMQQueueProperties.Get_IsOpen2: WordBool;
begin
    Result := DefaultInterface.IsOpen2;
end;

{$ENDIF}

class function CoMSMQEvent.Create: IMSMQEvent3;
begin
  Result := CreateComObject(CLASS_MSMQEvent) as IMSMQEvent3;
end;

class function CoMSMQEvent.CreateRemote(const MachineName: string): IMSMQEvent3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQEvent) as IMSMQEvent3;
end;

procedure TMSMQEvent.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D7D6E07A-DCCD-11D0-AA4B-0060970DEBAE}';
    IntfIID:   '{EBA96B1C-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '{D7D6E078-DCCD-11D0-AA4B-0060970DEBAE}';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQEvent.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    ConnectEvents(punk);
    Fintf:= punk as IMSMQEvent3;
  end;
end;

procedure TMSMQEvent.ConnectTo(svrIntf: IMSMQEvent3);
begin
  Disconnect;
  FIntf := svrIntf;
  ConnectEvents(FIntf);
end;

procedure TMSMQEvent.DisConnect;
begin
  if Fintf <> nil then
  begin
    DisconnectEvents(FIntf);
    FIntf := nil;
  end;
end;

function TMSMQEvent.GetDefaultInterface: IMSMQEvent3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQEvent.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQEventProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQEvent.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQEvent.GetServerProperties: TMSMQEventProperties;
begin
  Result := FProps;
end;
{$ENDIF}

procedure TMSMQEvent.InvokeEvent(DispID: TDispID; var Params: TVariantArray);
begin
  case DispID of
    -1: Exit;  // DISPID_UNKNOWN
    0: if Assigned(FOnArrived) then
         FOnArrived(Self,
                    Params[0] {const IDispatch},
                    Params[1] {Integer});
    1: if Assigned(FOnArrivedError) then
         FOnArrivedError(Self,
                         Params[0] {const IDispatch},
                         Params[1] {Integer},
                         Params[2] {Integer});
  end; {case DispID}
end;

function TMSMQEvent.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQEventProperties.Create(AServer: TMSMQEvent);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQEventProperties.GetDefaultInterface: IMSMQEvent3;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQEventProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

{$ENDIF}

class function CoMSMQQueueInfo.Create: IMSMQQueueInfo3;
begin
  Result := CreateComObject(CLASS_MSMQQueueInfo) as IMSMQQueueInfo3;
end;

class function CoMSMQQueueInfo.CreateRemote(const MachineName: string): IMSMQQueueInfo3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQQueueInfo) as IMSMQQueueInfo3;
end;

procedure TMSMQQueueInfo.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D7D6E07C-DCCD-11D0-AA4B-0060970DEBAE}';
    IntfIID:   '{EBA96B1D-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQQueueInfo.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQQueueInfo3;
  end;
end;

procedure TMSMQQueueInfo.ConnectTo(svrIntf: IMSMQQueueInfo3);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQQueueInfo.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQQueueInfo.GetDefaultInterface: IMSMQQueueInfo3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQQueueInfo.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQQueueInfoProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQQueueInfo.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQQueueInfo.GetServerProperties: TMSMQQueueInfoProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQQueueInfo.Get_QueueGuid: WideString;
begin
    Result := DefaultInterface.QueueGuid;
end;

function TMSMQQueueInfo.Get_ServiceTypeGuid: WideString;
begin
    Result := DefaultInterface.ServiceTypeGuid;
end;

procedure TMSMQQueueInfo.Set_ServiceTypeGuid(const pbstrGuidServiceType: WideString);
  { Warning: The property ServiceTypeGuid has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ServiceTypeGuid := pbstrGuidServiceType;
end;

function TMSMQQueueInfo.Get_Label_: WideString;
begin
    Result := DefaultInterface.Label_;
end;

procedure TMSMQQueueInfo.Set_Label_(const pbstrLabel: WideString);
  { Warning: The property Label_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Label_ := pbstrLabel;
end;

function TMSMQQueueInfo.Get_PathName: WideString;
begin
    Result := DefaultInterface.PathName;
end;

procedure TMSMQQueueInfo.Set_PathName(const pbstrPathName: WideString);
  { Warning: The property PathName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PathName := pbstrPathName;
end;

function TMSMQQueueInfo.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

procedure TMSMQQueueInfo.Set_FormatName(const pbstrFormatName: WideString);
  { Warning: The property FormatName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FormatName := pbstrFormatName;
end;

function TMSMQQueueInfo.Get_IsTransactional: Smallint;
begin
    Result := DefaultInterface.IsTransactional;
end;

function TMSMQQueueInfo.Get_PrivLevel: Integer;
begin
    Result := DefaultInterface.PrivLevel;
end;

procedure TMSMQQueueInfo.Set_PrivLevel(plPrivLevel: Integer);
begin
  DefaultInterface.Set_PrivLevel(plPrivLevel);
end;

function TMSMQQueueInfo.Get_Journal: Integer;
begin
    Result := DefaultInterface.Journal;
end;

procedure TMSMQQueueInfo.Set_Journal(plJournal: Integer);
begin
  DefaultInterface.Set_Journal(plJournal);
end;

function TMSMQQueueInfo.Get_Quota: Integer;
begin
    Result := DefaultInterface.Quota;
end;

procedure TMSMQQueueInfo.Set_Quota(plQuota: Integer);
begin
  DefaultInterface.Set_Quota(plQuota);
end;

function TMSMQQueueInfo.Get_BasePriority: Integer;
begin
    Result := DefaultInterface.BasePriority;
end;

procedure TMSMQQueueInfo.Set_BasePriority(plBasePriority: Integer);
begin
  DefaultInterface.Set_BasePriority(plBasePriority);
end;

function TMSMQQueueInfo.Get_CreateTime: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.CreateTime;
end;

function TMSMQQueueInfo.Get_ModifyTime: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.ModifyTime;
end;

function TMSMQQueueInfo.Get_Authenticate: Integer;
begin
    Result := DefaultInterface.Authenticate;
end;

procedure TMSMQQueueInfo.Set_Authenticate(plAuthenticate: Integer);
begin
  DefaultInterface.Set_Authenticate(plAuthenticate);
end;

function TMSMQQueueInfo.Get_JournalQuota: Integer;
begin
    Result := DefaultInterface.JournalQuota;
end;

procedure TMSMQQueueInfo.Set_JournalQuota(plJournalQuota: Integer);
begin
  DefaultInterface.Set_JournalQuota(plJournalQuota);
end;

function TMSMQQueueInfo.Get_IsWorldReadable: Smallint;
begin
    Result := DefaultInterface.IsWorldReadable;
end;

function TMSMQQueueInfo.Get_PathNameDNS: WideString;
begin
    Result := DefaultInterface.PathNameDNS;
end;

function TMSMQQueueInfo.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQQueueInfo.Get_Security: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Security;
end;

procedure TMSMQQueueInfo.Set_Security(pvarSecurity: OleVariant);
begin
  DefaultInterface.Set_Security(pvarSecurity);
end;

function TMSMQQueueInfo.Get_IsTransactional2: WordBool;
begin
    Result := DefaultInterface.IsTransactional2;
end;

function TMSMQQueueInfo.Get_IsWorldReadable2: WordBool;
begin
    Result := DefaultInterface.IsWorldReadable2;
end;

function TMSMQQueueInfo.Get_MulticastAddress: WideString;
begin
    Result := DefaultInterface.MulticastAddress;
end;

procedure TMSMQQueueInfo.Set_MulticastAddress(const pbstrMulticastAddress: WideString);
  { Warning: The property MulticastAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MulticastAddress := pbstrMulticastAddress;
end;

function TMSMQQueueInfo.Get_ADsPath: WideString;
begin
    Result := DefaultInterface.ADsPath;
end;

procedure TMSMQQueueInfo.Create1;
begin
  DefaultInterface.Create(EmptyParam, EmptyParam);
end;

procedure TMSMQQueueInfo.Create1(var IsTransactional: OleVariant);
begin
  DefaultInterface.Create(IsTransactional, EmptyParam);
end;

procedure TMSMQQueueInfo.Create1(var IsTransactional: OleVariant; var IsWorldReadable: OleVariant);
begin
  DefaultInterface.Create(IsTransactional, IsWorldReadable);
end;

procedure TMSMQQueueInfo.Delete;
begin
  DefaultInterface.Delete;
end;

function TMSMQQueueInfo.Open(Access: Integer; ShareMode: Integer): IMSMQQueue3;
begin
  Result := DefaultInterface.Open(Access, ShareMode);
end;

procedure TMSMQQueueInfo.Refresh;
begin
  DefaultInterface.Refresh;
end;

procedure TMSMQQueueInfo.Update;
begin
  DefaultInterface.Update;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQQueueInfoProperties.Create(AServer: TMSMQQueueInfo);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQQueueInfoProperties.GetDefaultInterface: IMSMQQueueInfo3;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQQueueInfoProperties.Get_QueueGuid: WideString;
begin
    Result := DefaultInterface.QueueGuid;
end;

function TMSMQQueueInfoProperties.Get_ServiceTypeGuid: WideString;
begin
    Result := DefaultInterface.ServiceTypeGuid;
end;

procedure TMSMQQueueInfoProperties.Set_ServiceTypeGuid(const pbstrGuidServiceType: WideString);
  { Warning: The property ServiceTypeGuid has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ServiceTypeGuid := pbstrGuidServiceType;
end;

function TMSMQQueueInfoProperties.Get_Label_: WideString;
begin
    Result := DefaultInterface.Label_;
end;

procedure TMSMQQueueInfoProperties.Set_Label_(const pbstrLabel: WideString);
  { Warning: The property Label_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Label_ := pbstrLabel;
end;

function TMSMQQueueInfoProperties.Get_PathName: WideString;
begin
    Result := DefaultInterface.PathName;
end;

procedure TMSMQQueueInfoProperties.Set_PathName(const pbstrPathName: WideString);
  { Warning: The property PathName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PathName := pbstrPathName;
end;

function TMSMQQueueInfoProperties.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

procedure TMSMQQueueInfoProperties.Set_FormatName(const pbstrFormatName: WideString);
  { Warning: The property FormatName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FormatName := pbstrFormatName;
end;

function TMSMQQueueInfoProperties.Get_IsTransactional: Smallint;
begin
    Result := DefaultInterface.IsTransactional;
end;

function TMSMQQueueInfoProperties.Get_PrivLevel: Integer;
begin
    Result := DefaultInterface.PrivLevel;
end;

procedure TMSMQQueueInfoProperties.Set_PrivLevel(plPrivLevel: Integer);
begin
  DefaultInterface.Set_PrivLevel(plPrivLevel);
end;

function TMSMQQueueInfoProperties.Get_Journal: Integer;
begin
    Result := DefaultInterface.Journal;
end;

procedure TMSMQQueueInfoProperties.Set_Journal(plJournal: Integer);
begin
  DefaultInterface.Set_Journal(plJournal);
end;

function TMSMQQueueInfoProperties.Get_Quota: Integer;
begin
    Result := DefaultInterface.Quota;
end;

procedure TMSMQQueueInfoProperties.Set_Quota(plQuota: Integer);
begin
  DefaultInterface.Set_Quota(plQuota);
end;

function TMSMQQueueInfoProperties.Get_BasePriority: Integer;
begin
    Result := DefaultInterface.BasePriority;
end;

procedure TMSMQQueueInfoProperties.Set_BasePriority(plBasePriority: Integer);
begin
  DefaultInterface.Set_BasePriority(plBasePriority);
end;

function TMSMQQueueInfoProperties.Get_CreateTime: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.CreateTime;
end;

function TMSMQQueueInfoProperties.Get_ModifyTime: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.ModifyTime;
end;

function TMSMQQueueInfoProperties.Get_Authenticate: Integer;
begin
    Result := DefaultInterface.Authenticate;
end;

procedure TMSMQQueueInfoProperties.Set_Authenticate(plAuthenticate: Integer);
begin
  DefaultInterface.Set_Authenticate(plAuthenticate);
end;

function TMSMQQueueInfoProperties.Get_JournalQuota: Integer;
begin
    Result := DefaultInterface.JournalQuota;
end;

procedure TMSMQQueueInfoProperties.Set_JournalQuota(plJournalQuota: Integer);
begin
  DefaultInterface.Set_JournalQuota(plJournalQuota);
end;

function TMSMQQueueInfoProperties.Get_IsWorldReadable: Smallint;
begin
    Result := DefaultInterface.IsWorldReadable;
end;

function TMSMQQueueInfoProperties.Get_PathNameDNS: WideString;
begin
    Result := DefaultInterface.PathNameDNS;
end;

function TMSMQQueueInfoProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQQueueInfoProperties.Get_Security: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.Security;
end;

procedure TMSMQQueueInfoProperties.Set_Security(pvarSecurity: OleVariant);
begin
  DefaultInterface.Set_Security(pvarSecurity);
end;

function TMSMQQueueInfoProperties.Get_IsTransactional2: WordBool;
begin
    Result := DefaultInterface.IsTransactional2;
end;

function TMSMQQueueInfoProperties.Get_IsWorldReadable2: WordBool;
begin
    Result := DefaultInterface.IsWorldReadable2;
end;

function TMSMQQueueInfoProperties.Get_MulticastAddress: WideString;
begin
    Result := DefaultInterface.MulticastAddress;
end;

procedure TMSMQQueueInfoProperties.Set_MulticastAddress(const pbstrMulticastAddress: WideString);
  { Warning: The property MulticastAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MulticastAddress := pbstrMulticastAddress;
end;

function TMSMQQueueInfoProperties.Get_ADsPath: WideString;
begin
    Result := DefaultInterface.ADsPath;
end;

{$ENDIF}

class function CoMSMQQueueInfos.Create: IMSMQQueueInfos3;
begin
  Result := CreateComObject(CLASS_MSMQQueueInfos) as IMSMQQueueInfos3;
end;

class function CoMSMQQueueInfos.CreateRemote(const MachineName: string): IMSMQQueueInfos3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQQueueInfos) as IMSMQQueueInfos3;
end;

procedure TMSMQQueueInfos.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D7D6E07E-DCCD-11D0-AA4B-0060970DEBAE}';
    IntfIID:   '{EBA96B1E-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQQueueInfos.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQQueueInfos3;
  end;
end;

procedure TMSMQQueueInfos.ConnectTo(svrIntf: IMSMQQueueInfos3);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQQueueInfos.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQQueueInfos.GetDefaultInterface: IMSMQQueueInfos3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQQueueInfos.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQQueueInfosProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQQueueInfos.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQQueueInfos.GetServerProperties: TMSMQQueueInfosProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQQueueInfos.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

procedure TMSMQQueueInfos.Reset;
begin
  DefaultInterface.Reset;
end;

function TMSMQQueueInfos.Next: IMSMQQueueInfo3;
begin
  Result := DefaultInterface.Next;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQQueueInfosProperties.Create(AServer: TMSMQQueueInfos);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQQueueInfosProperties.GetDefaultInterface: IMSMQQueueInfos3;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQQueueInfosProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

{$ENDIF}

class function CoMSMQTransaction.Create: IMSMQTransaction3;
begin
  Result := CreateComObject(CLASS_MSMQTransaction) as IMSMQTransaction3;
end;

class function CoMSMQTransaction.CreateRemote(const MachineName: string): IMSMQTransaction3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQTransaction) as IMSMQTransaction3;
end;

procedure TMSMQTransaction.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D7D6E080-DCCD-11D0-AA4B-0060970DEBAE}';
    IntfIID:   '{EBA96B13-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQTransaction.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQTransaction3;
  end;
end;

procedure TMSMQTransaction.ConnectTo(svrIntf: IMSMQTransaction3);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQTransaction.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQTransaction.GetDefaultInterface: IMSMQTransaction3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQTransaction.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQTransactionProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQTransaction.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQTransaction.GetServerProperties: TMSMQTransactionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQTransaction.Get_Transaction: Integer;
begin
    Result := DefaultInterface.Transaction;
end;

function TMSMQTransaction.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQTransaction.Get_ITransaction: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.ITransaction;
end;

procedure TMSMQTransaction.Commit;
begin
  DefaultInterface.Commit(EmptyParam, EmptyParam, EmptyParam);
end;

procedure TMSMQTransaction.Commit(var fRetaining: OleVariant);
begin
  DefaultInterface.Commit(fRetaining, EmptyParam, EmptyParam);
end;

procedure TMSMQTransaction.Commit(var fRetaining: OleVariant; var grfTC: OleVariant);
begin
  DefaultInterface.Commit(fRetaining, grfTC, EmptyParam);
end;

procedure TMSMQTransaction.Commit(var fRetaining: OleVariant; var grfTC: OleVariant; 
                                  var grfRM: OleVariant);
begin
  DefaultInterface.Commit(fRetaining, grfTC, grfRM);
end;

procedure TMSMQTransaction.Abort;
begin
  DefaultInterface.Abort(EmptyParam, EmptyParam);
end;

procedure TMSMQTransaction.Abort(var fRetaining: OleVariant);
begin
  DefaultInterface.Abort(fRetaining, EmptyParam);
end;

procedure TMSMQTransaction.Abort(var fRetaining: OleVariant; var fAsync: OleVariant);
begin
  DefaultInterface.Abort(fRetaining, fAsync);
end;

procedure TMSMQTransaction.InitNew(varTransaction: OleVariant);
begin
  DefaultInterface.InitNew(varTransaction);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQTransactionProperties.Create(AServer: TMSMQTransaction);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQTransactionProperties.GetDefaultInterface: IMSMQTransaction3;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQTransactionProperties.Get_Transaction: Integer;
begin
    Result := DefaultInterface.Transaction;
end;

function TMSMQTransactionProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQTransactionProperties.Get_ITransaction: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.ITransaction;
end;

{$ENDIF}

class function CoMSMQCoordinatedTransactionDispenser.Create: IMSMQCoordinatedTransactionDispenser3;
begin
  Result := CreateComObject(CLASS_MSMQCoordinatedTransactionDispenser) as IMSMQCoordinatedTransactionDispenser3;
end;

class function CoMSMQCoordinatedTransactionDispenser.CreateRemote(const MachineName: string): IMSMQCoordinatedTransactionDispenser3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQCoordinatedTransactionDispenser) as IMSMQCoordinatedTransactionDispenser3;
end;

procedure TMSMQCoordinatedTransactionDispenser.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D7D6E082-DCCD-11D0-AA4B-0060970DEBAE}';
    IntfIID:   '{EBA96B14-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQCoordinatedTransactionDispenser.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQCoordinatedTransactionDispenser3;
  end;
end;

procedure TMSMQCoordinatedTransactionDispenser.ConnectTo(svrIntf: IMSMQCoordinatedTransactionDispenser3);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQCoordinatedTransactionDispenser.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQCoordinatedTransactionDispenser.GetDefaultInterface: IMSMQCoordinatedTransactionDispenser3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQCoordinatedTransactionDispenser.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQCoordinatedTransactionDispenserProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQCoordinatedTransactionDispenser.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQCoordinatedTransactionDispenser.GetServerProperties: TMSMQCoordinatedTransactionDispenserProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQCoordinatedTransactionDispenser.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQCoordinatedTransactionDispenser.BeginTransaction: IMSMQTransaction3;
begin
  Result := DefaultInterface.BeginTransaction;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQCoordinatedTransactionDispenserProperties.Create(AServer: TMSMQCoordinatedTransactionDispenser);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQCoordinatedTransactionDispenserProperties.GetDefaultInterface: IMSMQCoordinatedTransactionDispenser3;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQCoordinatedTransactionDispenserProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

{$ENDIF}

class function CoMSMQTransactionDispenser.Create: IMSMQTransactionDispenser3;
begin
  Result := CreateComObject(CLASS_MSMQTransactionDispenser) as IMSMQTransactionDispenser3;
end;

class function CoMSMQTransactionDispenser.CreateRemote(const MachineName: string): IMSMQTransactionDispenser3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQTransactionDispenser) as IMSMQTransactionDispenser3;
end;

procedure TMSMQTransactionDispenser.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D7D6E084-DCCD-11D0-AA4B-0060970DEBAE}';
    IntfIID:   '{EBA96B15-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQTransactionDispenser.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQTransactionDispenser3;
  end;
end;

procedure TMSMQTransactionDispenser.ConnectTo(svrIntf: IMSMQTransactionDispenser3);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQTransactionDispenser.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQTransactionDispenser.GetDefaultInterface: IMSMQTransactionDispenser3;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQTransactionDispenser.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQTransactionDispenserProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQTransactionDispenser.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQTransactionDispenser.GetServerProperties: TMSMQTransactionDispenserProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQTransactionDispenser.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

function TMSMQTransactionDispenser.BeginTransaction: IMSMQTransaction3;
begin
  Result := DefaultInterface.BeginTransaction;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQTransactionDispenserProperties.Create(AServer: TMSMQTransactionDispenser);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQTransactionDispenserProperties.GetDefaultInterface: IMSMQTransactionDispenser3;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQTransactionDispenserProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

{$ENDIF}

class function CoMSMQApplication.Create: IMSMQApplication3;
begin
  Result := CreateComObject(CLASS_MSMQApplication) as IMSMQApplication3;
end;

class function CoMSMQApplication.CreateRemote(const MachineName: string): IMSMQApplication3;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQApplication) as IMSMQApplication3;
end;

class function CoMSMQDestination.Create: IMSMQDestination;
begin
  Result := CreateComObject(CLASS_MSMQDestination) as IMSMQDestination;
end;

class function CoMSMQDestination.CreateRemote(const MachineName: string): IMSMQDestination;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQDestination) as IMSMQDestination;
end;

procedure TMSMQDestination.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{EBA96B18-2168-11D3-898C-00E02C074F6B}';
    IntfIID:   '{EBA96B16-2168-11D3-898C-00E02C074F6B}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQDestination.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQDestination;
  end;
end;

procedure TMSMQDestination.ConnectTo(svrIntf: IMSMQDestination);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQDestination.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQDestination.GetDefaultInterface: IMSMQDestination;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQDestination.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQDestinationProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQDestination.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQDestination.GetServerProperties: TMSMQDestinationProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQDestination.Get_IsOpen: WordBool;
begin
    Result := DefaultInterface.IsOpen;
end;

function TMSMQDestination.Get_IADs: IDispatch;
begin
    Result := DefaultInterface.IADs;
end;

procedure TMSMQDestination._Set_IADs(const ppIADs: IDispatch);
  { Warning: The property IADs has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IADs := ppIADs;
end;

function TMSMQDestination.Get_ADsPath: WideString;
begin
    Result := DefaultInterface.ADsPath;
end;

procedure TMSMQDestination.Set_ADsPath(const pbstrADsPath: WideString);
  { Warning: The property ADsPath has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ADsPath := pbstrADsPath;
end;

function TMSMQDestination.Get_PathName: WideString;
begin
    Result := DefaultInterface.PathName;
end;

procedure TMSMQDestination.Set_PathName(const pbstrPathName: WideString);
  { Warning: The property PathName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PathName := pbstrPathName;
end;

function TMSMQDestination.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

procedure TMSMQDestination.Set_FormatName(const pbstrFormatName: WideString);
  { Warning: The property FormatName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FormatName := pbstrFormatName;
end;

function TMSMQDestination.Get_Destinations: IDispatch;
begin
    Result := DefaultInterface.Destinations;
end;

procedure TMSMQDestination._Set_Destinations(const ppDestinations: IDispatch);
  { Warning: The property Destinations has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Destinations := ppDestinations;
end;

function TMSMQDestination.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

procedure TMSMQDestination.Open;
begin
  DefaultInterface.Open;
end;

procedure TMSMQDestination.Close;
begin
  DefaultInterface.Close;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQDestinationProperties.Create(AServer: TMSMQDestination);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQDestinationProperties.GetDefaultInterface: IMSMQDestination;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQDestinationProperties.Get_IsOpen: WordBool;
begin
    Result := DefaultInterface.IsOpen;
end;

function TMSMQDestinationProperties.Get_IADs: IDispatch;
begin
    Result := DefaultInterface.IADs;
end;

procedure TMSMQDestinationProperties._Set_IADs(const ppIADs: IDispatch);
  { Warning: The property IADs has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IADs := ppIADs;
end;

function TMSMQDestinationProperties.Get_ADsPath: WideString;
begin
    Result := DefaultInterface.ADsPath;
end;

procedure TMSMQDestinationProperties.Set_ADsPath(const pbstrADsPath: WideString);
  { Warning: The property ADsPath has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.ADsPath := pbstrADsPath;
end;

function TMSMQDestinationProperties.Get_PathName: WideString;
begin
    Result := DefaultInterface.PathName;
end;

procedure TMSMQDestinationProperties.Set_PathName(const pbstrPathName: WideString);
  { Warning: The property PathName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.PathName := pbstrPathName;
end;

function TMSMQDestinationProperties.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

procedure TMSMQDestinationProperties.Set_FormatName(const pbstrFormatName: WideString);
  { Warning: The property FormatName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.FormatName := pbstrFormatName;
end;

function TMSMQDestinationProperties.Get_Destinations: IDispatch;
begin
    Result := DefaultInterface.Destinations;
end;

procedure TMSMQDestinationProperties._Set_Destinations(const ppDestinations: IDispatch);
  { Warning: The property Destinations has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Destinations := ppDestinations;
end;

function TMSMQDestinationProperties.Get_Properties: IDispatch;
begin
    Result := DefaultInterface.Properties;
end;

{$ENDIF}

class function CoMSMQManagement.Create: IMSMQManagement;
begin
  Result := CreateComObject(CLASS_MSMQManagement) as IMSMQManagement;
end;

class function CoMSMQManagement.CreateRemote(const MachineName: string): IMSMQManagement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQManagement) as IMSMQManagement;
end;

procedure TMSMQManagement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{39CE96FE-F4C5-4484-A143-4C2D5D324229}';
    IntfIID:   '{BE5F0241-E489-4957-8CC4-A452FCF3E23E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQManagement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQManagement;
  end;
end;

procedure TMSMQManagement.ConnectTo(svrIntf: IMSMQManagement);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQManagement.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQManagement.GetDefaultInterface: IMSMQManagement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQManagement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQManagementProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQManagement.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQManagement.GetServerProperties: TMSMQManagementProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQManagement.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

function TMSMQManagement.Get_Machine: WideString;
begin
    Result := DefaultInterface.Machine;
end;

function TMSMQManagement.Get_MessageCount: Integer;
begin
    Result := DefaultInterface.MessageCount;
end;

function TMSMQManagement.Get_ForeignStatus: Integer;
begin
    Result := DefaultInterface.ForeignStatus;
end;

function TMSMQManagement.Get_QueueType: Integer;
begin
    Result := DefaultInterface.QueueType;
end;

function TMSMQManagement.Get_IsLocal: WordBool;
begin
    Result := DefaultInterface.IsLocal;
end;

function TMSMQManagement.Get_TransactionalStatus: Integer;
begin
    Result := DefaultInterface.TransactionalStatus;
end;

function TMSMQManagement.Get_BytesInQueue: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.BytesInQueue;
end;

procedure TMSMQManagement.Init;
begin
  DefaultInterface.Init(EmptyParam, EmptyParam, EmptyParam);
end;

procedure TMSMQManagement.Init(var Machine: OleVariant);
begin
  DefaultInterface.Init(Machine, EmptyParam, EmptyParam);
end;

procedure TMSMQManagement.Init(var Machine: OleVariant; var PathName: OleVariant);
begin
  DefaultInterface.Init(Machine, PathName, EmptyParam);
end;

procedure TMSMQManagement.Init(var Machine: OleVariant; var PathName: OleVariant; 
                               var FormatName: OleVariant);
begin
  DefaultInterface.Init(Machine, PathName, FormatName);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQManagementProperties.Create(AServer: TMSMQManagement);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQManagementProperties.GetDefaultInterface: IMSMQManagement;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQManagementProperties.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

function TMSMQManagementProperties.Get_Machine: WideString;
begin
    Result := DefaultInterface.Machine;
end;

function TMSMQManagementProperties.Get_MessageCount: Integer;
begin
    Result := DefaultInterface.MessageCount;
end;

function TMSMQManagementProperties.Get_ForeignStatus: Integer;
begin
    Result := DefaultInterface.ForeignStatus;
end;

function TMSMQManagementProperties.Get_QueueType: Integer;
begin
    Result := DefaultInterface.QueueType;
end;

function TMSMQManagementProperties.Get_IsLocal: WordBool;
begin
    Result := DefaultInterface.IsLocal;
end;

function TMSMQManagementProperties.Get_TransactionalStatus: Integer;
begin
    Result := DefaultInterface.TransactionalStatus;
end;

function TMSMQManagementProperties.Get_BytesInQueue: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.BytesInQueue;
end;

{$ENDIF}

class function CoMSMQOutgoingQueueManagement.Create: IMSMQOutgoingQueueManagement;
begin
  Result := CreateComObject(CLASS_MSMQOutgoingQueueManagement) as IMSMQOutgoingQueueManagement;
end;

class function CoMSMQOutgoingQueueManagement.CreateRemote(const MachineName: string): IMSMQOutgoingQueueManagement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQOutgoingQueueManagement) as IMSMQOutgoingQueueManagement;
end;

procedure TMSMQOutgoingQueueManagement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0188401C-247A-4FED-99C6-BF14119D7055}';
    IntfIID:   '{64C478FB-F9B0-4695-8A7F-439AC94326D3}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQOutgoingQueueManagement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQOutgoingQueueManagement;
  end;
end;

procedure TMSMQOutgoingQueueManagement.ConnectTo(svrIntf: IMSMQOutgoingQueueManagement);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQOutgoingQueueManagement.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQOutgoingQueueManagement.GetDefaultInterface: IMSMQOutgoingQueueManagement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQOutgoingQueueManagement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQOutgoingQueueManagementProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQOutgoingQueueManagement.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQOutgoingQueueManagement.GetServerProperties: TMSMQOutgoingQueueManagementProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQOutgoingQueueManagement.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

function TMSMQOutgoingQueueManagement.Get_Machine: WideString;
begin
    Result := DefaultInterface.Machine;
end;

function TMSMQOutgoingQueueManagement.Get_MessageCount: Integer;
begin
    Result := DefaultInterface.MessageCount;
end;

function TMSMQOutgoingQueueManagement.Get_ForeignStatus: Integer;
begin
    Result := DefaultInterface.ForeignStatus;
end;

function TMSMQOutgoingQueueManagement.Get_QueueType: Integer;
begin
    Result := DefaultInterface.QueueType;
end;

function TMSMQOutgoingQueueManagement.Get_IsLocal: WordBool;
begin
    Result := DefaultInterface.IsLocal;
end;

function TMSMQOutgoingQueueManagement.Get_TransactionalStatus: Integer;
begin
    Result := DefaultInterface.TransactionalStatus;
end;

function TMSMQOutgoingQueueManagement.Get_BytesInQueue: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.BytesInQueue;
end;

function TMSMQOutgoingQueueManagement.Get_State: Integer;
begin
    Result := DefaultInterface.State;
end;

function TMSMQOutgoingQueueManagement.Get_NextHops: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.NextHops;
end;

procedure TMSMQOutgoingQueueManagement.Init;
begin
  DefaultInterface.Init(EmptyParam, EmptyParam, EmptyParam);
end;

procedure TMSMQOutgoingQueueManagement.Init(var Machine: OleVariant);
begin
  DefaultInterface.Init(Machine, EmptyParam, EmptyParam);
end;

procedure TMSMQOutgoingQueueManagement.Init(var Machine: OleVariant; var PathName: OleVariant);
begin
  DefaultInterface.Init(Machine, PathName, EmptyParam);
end;

procedure TMSMQOutgoingQueueManagement.Init(var Machine: OleVariant; var PathName: OleVariant; 
                                            var FormatName: OleVariant);
begin
  DefaultInterface.Init(Machine, PathName, FormatName);
end;

function TMSMQOutgoingQueueManagement.EodGetSendInfo: IMSMQCollection;
begin
  Result := DefaultInterface.EodGetSendInfo;
end;

procedure TMSMQOutgoingQueueManagement.Resume;
begin
  DefaultInterface.Resume;
end;

procedure TMSMQOutgoingQueueManagement.Pause;
begin
  DefaultInterface.Pause;
end;

procedure TMSMQOutgoingQueueManagement.EodResend;
begin
  DefaultInterface.EodResend;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQOutgoingQueueManagementProperties.Create(AServer: TMSMQOutgoingQueueManagement);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQOutgoingQueueManagementProperties.GetDefaultInterface: IMSMQOutgoingQueueManagement;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQOutgoingQueueManagementProperties.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

function TMSMQOutgoingQueueManagementProperties.Get_Machine: WideString;
begin
    Result := DefaultInterface.Machine;
end;

function TMSMQOutgoingQueueManagementProperties.Get_MessageCount: Integer;
begin
    Result := DefaultInterface.MessageCount;
end;

function TMSMQOutgoingQueueManagementProperties.Get_ForeignStatus: Integer;
begin
    Result := DefaultInterface.ForeignStatus;
end;

function TMSMQOutgoingQueueManagementProperties.Get_QueueType: Integer;
begin
    Result := DefaultInterface.QueueType;
end;

function TMSMQOutgoingQueueManagementProperties.Get_IsLocal: WordBool;
begin
    Result := DefaultInterface.IsLocal;
end;

function TMSMQOutgoingQueueManagementProperties.Get_TransactionalStatus: Integer;
begin
    Result := DefaultInterface.TransactionalStatus;
end;

function TMSMQOutgoingQueueManagementProperties.Get_BytesInQueue: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.BytesInQueue;
end;

function TMSMQOutgoingQueueManagementProperties.Get_State: Integer;
begin
    Result := DefaultInterface.State;
end;

function TMSMQOutgoingQueueManagementProperties.Get_NextHops: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.NextHops;
end;

{$ENDIF}

class function CoMSMQQueueManagement.Create: IMSMQQueueManagement;
begin
  Result := CreateComObject(CLASS_MSMQQueueManagement) as IMSMQQueueManagement;
end;

class function CoMSMQQueueManagement.CreateRemote(const MachineName: string): IMSMQQueueManagement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_MSMQQueueManagement) as IMSMQQueueManagement;
end;

procedure TMSMQQueueManagement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{33B6D07E-F27D-42FA-B2D7-BF82E11E9374}';
    IntfIID:   '{7FBE7759-5760-444D-B8A5-5E7AB9A84CCE}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMSMQQueueManagement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMSMQQueueManagement;
  end;
end;

procedure TMSMQQueueManagement.ConnectTo(svrIntf: IMSMQQueueManagement);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMSMQQueueManagement.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMSMQQueueManagement.GetDefaultInterface: IMSMQQueueManagement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMSMQQueueManagement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMSMQQueueManagementProperties.Create(Self);
{$ENDIF}
end;

destructor TMSMQQueueManagement.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMSMQQueueManagement.GetServerProperties: TMSMQQueueManagementProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMSMQQueueManagement.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

function TMSMQQueueManagement.Get_Machine: WideString;
begin
    Result := DefaultInterface.Machine;
end;

function TMSMQQueueManagement.Get_MessageCount: Integer;
begin
    Result := DefaultInterface.MessageCount;
end;

function TMSMQQueueManagement.Get_ForeignStatus: Integer;
begin
    Result := DefaultInterface.ForeignStatus;
end;

function TMSMQQueueManagement.Get_QueueType: Integer;
begin
    Result := DefaultInterface.QueueType;
end;

function TMSMQQueueManagement.Get_IsLocal: WordBool;
begin
    Result := DefaultInterface.IsLocal;
end;

function TMSMQQueueManagement.Get_TransactionalStatus: Integer;
begin
    Result := DefaultInterface.TransactionalStatus;
end;

function TMSMQQueueManagement.Get_BytesInQueue: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.BytesInQueue;
end;

function TMSMQQueueManagement.Get_JournalMessageCount: Integer;
begin
    Result := DefaultInterface.JournalMessageCount;
end;

function TMSMQQueueManagement.Get_BytesInJournal: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.BytesInJournal;
end;

procedure TMSMQQueueManagement.Init;
begin
  DefaultInterface.Init(EmptyParam, EmptyParam, EmptyParam);
end;

procedure TMSMQQueueManagement.Init(var Machine: OleVariant);
begin
  DefaultInterface.Init(Machine, EmptyParam, EmptyParam);
end;

procedure TMSMQQueueManagement.Init(var Machine: OleVariant; var PathName: OleVariant);
begin
  DefaultInterface.Init(Machine, PathName, EmptyParam);
end;

procedure TMSMQQueueManagement.Init(var Machine: OleVariant; var PathName: OleVariant; 
                                    var FormatName: OleVariant);
begin
  DefaultInterface.Init(Machine, PathName, FormatName);
end;

function TMSMQQueueManagement.EodGetReceiveInfo: OleVariant;
begin
  Result := DefaultInterface.EodGetReceiveInfo;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMSMQQueueManagementProperties.Create(AServer: TMSMQQueueManagement);
begin
  inherited Create;
  FServer := AServer;
end;

function TMSMQQueueManagementProperties.GetDefaultInterface: IMSMQQueueManagement;
begin
  Result := FServer.DefaultInterface;
end;

function TMSMQQueueManagementProperties.Get_FormatName: WideString;
begin
    Result := DefaultInterface.FormatName;
end;

function TMSMQQueueManagementProperties.Get_Machine: WideString;
begin
    Result := DefaultInterface.Machine;
end;

function TMSMQQueueManagementProperties.Get_MessageCount: Integer;
begin
    Result := DefaultInterface.MessageCount;
end;

function TMSMQQueueManagementProperties.Get_ForeignStatus: Integer;
begin
    Result := DefaultInterface.ForeignStatus;
end;

function TMSMQQueueManagementProperties.Get_QueueType: Integer;
begin
    Result := DefaultInterface.QueueType;
end;

function TMSMQQueueManagementProperties.Get_IsLocal: WordBool;
begin
    Result := DefaultInterface.IsLocal;
end;

function TMSMQQueueManagementProperties.Get_TransactionalStatus: Integer;
begin
    Result := DefaultInterface.TransactionalStatus;
end;

function TMSMQQueueManagementProperties.Get_BytesInQueue: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.BytesInQueue;
end;

function TMSMQQueueManagementProperties.Get_JournalMessageCount: Integer;
begin
    Result := DefaultInterface.JournalMessageCount;
end;

function TMSMQQueueManagementProperties.Get_BytesInJournal: OleVariant;
var
  InterfaceVariant : OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  Result := InterfaceVariant.BytesInJournal;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TMSMQQuery, TMSMQMessage, TMSMQQueue, TMSMQEvent, 
    TMSMQQueueInfo, TMSMQQueueInfos, TMSMQTransaction, TMSMQCoordinatedTransactionDispenser, TMSMQTransactionDispenser, 
    TMSMQDestination, TMSMQManagement, TMSMQOutgoingQueueManagement, TMSMQQueueManagement]);
end;

end.
