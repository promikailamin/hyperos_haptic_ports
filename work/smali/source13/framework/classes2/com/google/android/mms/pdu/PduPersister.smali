.class public Lcom/google/android/mms/pdu/PduPersister;
.super Ljava/lang/Object;
.source "PduPersister.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist ADDRESS_FIELDS:[I

.field private static final blacklist CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist MESSAGE_BOX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PART_COLUMN_CHARSET:I = 0x1

.field private static final blacklist PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final blacklist PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final blacklist PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final blacklist PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final blacklist PART_COLUMN_FILENAME:I = 0x6

.field private static final blacklist PART_COLUMN_ID:I = 0x0

.field private static final blacklist PART_COLUMN_NAME:I = 0x7

.field private static final blacklist PART_COLUMN_TEXT:I = 0x8

.field private static final greylist PART_PROJECTION:[Ljava/lang/String;

.field private static final greylist PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

.field private static final blacklist PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final blacklist PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final blacklist PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final blacklist PDU_COLUMN_DATE:I = 0x15

.field private static final blacklist PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final blacklist PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final blacklist PDU_COLUMN_EXPIRY:I = 0x17

.field private static final blacklist PDU_COLUMN_ID:I = 0x0

.field private static final blacklist PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final blacklist PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final blacklist PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final blacklist PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final blacklist PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final blacklist PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final blacklist PDU_COLUMN_PRIORITY:I = 0xf

.field private static final blacklist PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final blacklist PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final blacklist PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final blacklist PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final blacklist PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final blacklist PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final blacklist PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final blacklist PDU_COLUMN_STATUS:I = 0x14

.field private static final blacklist PDU_COLUMN_SUBJECT:I = 0x4

.field private static final blacklist PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final blacklist PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final blacklist PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final blacklist PDU_PROJECTION:[Ljava/lang/String;

.field private static final blacklist PLACEHOLDER_THREAD_ID:J = 0x7fffffffffffffffL

.field public static final blacklist PROC_STATUS_COMPLETED:I = 0x3

.field public static final blacklist PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final blacklist PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "PduPersister"

.field public static final blacklist TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final blacklist TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPersister:Lcom/google/android/mms/pdu/PduPersister;


# instance fields
.field private final greylist mContentResolver:Landroid/content/ContentResolver;

.field private final greylist mContext:Landroid/content/Context;

.field private final blacklist mDrmManagerClient:Landroid/drm/DrmManagerClient;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 28

    .line 70
    nop

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_344

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    .line 107
    const-string v1, "_id"

    const-string v2, "msg_box"

    const-string v3, "thread_id"

    const-string v4, "retr_txt"

    const-string v5, "sub"

    const-string v6, "ct_l"

    const-string v7, "ct_t"

    const-string v8, "m_cls"

    const-string v9, "m_id"

    const-string v10, "resp_txt"

    const-string v11, "tr_id"

    const-string v12, "ct_cls"

    const-string v13, "d_rpt"

    const-string v14, "m_type"

    const-string v15, "v"

    const-string v16, "pri"

    const-string v17, "rr"

    const-string v18, "read_status"

    const-string v19, "rpt_a"

    const-string v20, "retr_st"

    const-string v21, "st"

    const-string v22, "date"

    const-string v23, "d_tm"

    const-string v24, "exp"

    const-string v25, "m_size"

    const-string v26, "sub_cs"

    const-string v27, "retr_txt_cs"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    .line 166
    const-string v1, "_id"

    const-string v2, "chset"

    const-string v3, "cd"

    const-string v4, "cid"

    const-string v5, "cl"

    const-string v6, "ct"

    const-string v7, "fn"

    const-string v8, "name"

    const-string v9, "text"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    .line 209
    sget-object v1, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v1, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 215
    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 219
    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 224
    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 228
    const/16 v1, 0x9a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 233
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 241
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 250
    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 262
    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    .line 275
    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    .line 281
    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    .line 287
    return-void

    :array_344
    .array-data 4
        0x81
        0x82
        0x89
        0x97
    .end array-data
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 298
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 299
    return-void
.end method

.method private greylist getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .registers 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .line 364
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 365
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 367
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist getBytes(Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .line 1534
    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 1535
    :catch_7
    move-exception v0

    .line 1537
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1538
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1
.end method

.method private greylist getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .registers 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I

    .line 356
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 357
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 359
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .registers 2
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 714
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_10

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public static greylist getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 304
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_c

    .line 305
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    goto :goto_20

    .line 306
    :cond_c
    iget-object v0, v0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 307
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPersister;->release()V

    .line 308
    new-instance v0, Lcom/google/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 311
    :cond_20
    :goto_20
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->sPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private blacklist loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V
    .registers 11
    .param p1, "msgId"    # J
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 496
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "address"

    const-string v4, "charset"

    const-string v5, "type"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 496
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 501
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_93

    .line 503
    :goto_34
    :try_start_34
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 504
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "addr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 506
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 507
    .local v2, "addrType":I
    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_94

    .line 521
    const-string v3, "PduPersister"

    goto :goto_73

    .line 509
    :sswitch_51
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 510
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 509
    invoke-virtual {p3, v4, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 512
    goto :goto_89

    .line 516
    :sswitch_62
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 517
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 516
    invoke-virtual {p3, v4, v2}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 519
    goto :goto_89

    .line 521
    :goto_73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown address type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_34 .. :try_end_89} :catchall_8e

    .line 525
    .end local v1    # "addr":Ljava/lang/String;
    .end local v2    # "addrType":I
    :cond_89
    :goto_89
    goto :goto_34

    .line 527
    :cond_8a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 528
    goto :goto_93

    .line 527
    :catchall_8e
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 528
    throw v1

    .line 530
    :cond_93
    :goto_93
    return-void

    :sswitch_data_94
    .sparse-switch
        0x81 -> :sswitch_62
        0x82 -> :sswitch_62
        0x89 -> :sswitch_51
        0x97 -> :sswitch_62
    .end sparse-switch
.end method

.method private blacklist loadParts(J)[Lcom/google/android/mms/pdu/PduPart;
    .registers 30
    .param p1, "msgId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 371
    move-object/from16 v1, p0

    const-string v2, "Failed to close stream"

    const-string v3, "PduPersister"

    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mms/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v11, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/part"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/google/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    .line 371
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 375
    .local v4, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 378
    .local v5, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v4, :cond_212

    :try_start_35
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_212

    .line 385
    :cond_3d
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v6, v0

    .line 386
    .local v6, "partCount":I
    const/4 v0, 0x0

    .line 387
    .local v0, "partIdx":I
    new-array v7, v6, [Lcom/google/android/mms/pdu/PduPart;

    move-object v5, v7

    move v7, v0

    .line 388
    .end local v0    # "partIdx":I
    .local v7, "partIdx":I
    :goto_47
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_203

    .line 389
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    move-object v8, v0

    .line 390
    .local v8, "part":Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    .line 392
    .local v9, "charset":Ljava/lang/Integer;
    if-eqz v9, :cond_62

    .line 393
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 396
    :cond_62
    const/4 v0, 0x2

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v10, v0

    .line 398
    .local v10, "contentDisposition":[B
    if-eqz v10, :cond_6d

    .line 399
    invoke-virtual {v8, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 402
    :cond_6d
    const/4 v0, 0x3

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v13, v0

    .line 404
    .local v13, "contentId":[B
    if-eqz v13, :cond_78

    .line 405
    invoke-virtual {v8, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 408
    :cond_78
    const/4 v0, 0x4

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v14, v0

    .line 410
    .local v14, "contentLocation":[B
    if-eqz v14, :cond_83

    .line 411
    invoke-virtual {v8, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 414
    :cond_83
    const/4 v0, 0x5

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object v15, v0

    .line 416
    .local v15, "contentType":[B
    if-eqz v15, :cond_1f5

    .line 417
    invoke-virtual {v8, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 422
    const/4 v0, 0x6

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object/from16 v16, v0

    .line 424
    .local v16, "fileName":[B
    move/from16 v17, v6

    move-object/from16 v6, v16

    .end local v16    # "fileName":[B
    .local v6, "fileName":[B
    .local v17, "partCount":I
    if-eqz v6, :cond_9e

    .line 425
    invoke-virtual {v8, v6}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 428
    :cond_9e
    const/4 v0, 0x7

    invoke-direct {v1, v4, v0}, Lcom/google/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v0

    move-object/from16 v16, v0

    .line 430
    .local v16, "name":[B
    move-object/from16 v18, v6

    move-object/from16 v6, v16

    .end local v16    # "name":[B
    .local v6, "name":[B
    .local v18, "fileName":[B
    if-eqz v6, :cond_ae

    .line 431
    invoke-virtual {v8, v6}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 435
    :cond_ae
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 436
    .local v21, "partId":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    .end local v6    # "name":[B
    .local v19, "name":[B
    const-string v6, "content://mms/part/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v6, v9

    move-object/from16 v20, v10

    move-wide/from16 v9, v21

    .end local v10    # "contentDisposition":[B
    .end local v21    # "partId":J
    .local v6, "charset":Ljava/lang/Integer;
    .local v9, "partId":J
    .local v20, "contentDisposition":[B
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v21, v0

    .line 437
    .local v21, "partURI":Landroid/net/Uri;
    move-object/from16 v22, v6

    move-object/from16 v6, v21

    .end local v21    # "partURI":Landroid/net/Uri;
    .local v6, "partURI":Landroid/net/Uri;
    .local v22, "charset":Ljava/lang/Integer;
    invoke-virtual {v8, v6}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 441
    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v0

    .line 442
    .local v21, "type":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e4

    .line 443
    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1dd

    .line 444
    invoke-static/range {v21 .. v21}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d6

    .line 445
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v23, v0

    .line 446
    .local v23, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v24, 0x0

    .line 451
    .local v24, "is":Ljava/io/InputStream;
    const-string v0, "text/plain"

    move-wide/from16 v25, v9

    move-object/from16 v9, v21

    .end local v21    # "type":Ljava/lang/String;
    .local v9, "type":Ljava/lang/String;
    .local v25, "partId":J
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ad

    const-string v0, "application/smil"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ad

    const-string v0, "text/html"

    .line 452
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_117
    .catchall {:try_start_35 .. :try_end_117} :catchall_20b

    if-eqz v0, :cond_121

    move-object/from16 v21, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v9

    goto/16 :goto_1b3

    .line 460
    :cond_121
    :try_start_121
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_127
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_127} :catch_188
    .catchall {:try_start_121 .. :try_end_127} :catchall_17f

    move-object v10, v0

    .line 462
    .end local v24    # "is":Ljava/io/InputStream;
    .local v10, "is":Ljava/io/InputStream;
    const/16 v0, 0x100

    :try_start_12a
    new-array v0, v0, [B

    .line 463
    .local v0, "buffer":[B
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v21
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_130} :catch_175
    .catchall {:try_start_12a .. :try_end_130} :catchall_16a

    move/from16 v1, v21

    .line 464
    .local v1, "len":I
    :goto_132
    if-ltz v1, :cond_153

    .line 465
    move-object/from16 v21, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v9

    const/4 v9, 0x0

    .end local v9    # "type":Ljava/lang/String;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .local v21, "partURI":Landroid/net/Uri;
    .local v23, "type":Ljava/lang/String;
    :try_start_13b
    invoke-virtual {v6, v0, v9, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 466
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_142} :catch_14f
    .catchall {:try_start_13b .. :try_end_142} :catchall_14a

    move v1, v9

    move-object/from16 v9, v23

    move-object/from16 v23, v6

    move-object/from16 v6, v21

    goto :goto_132

    .line 473
    .end local v0    # "buffer":[B
    .end local v1    # "len":I
    :catchall_14a
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v10

    goto :goto_19f

    .line 468
    :catch_14f
    move-exception v0

    move-object/from16 v24, v10

    goto :goto_18f

    .line 464
    .end local v21    # "partURI":Landroid/net/Uri;
    .restart local v0    # "buffer":[B
    .restart local v1    # "len":I
    .local v6, "partURI":Landroid/net/Uri;
    .restart local v9    # "type":Ljava/lang/String;
    .local v23, "baos":Ljava/io/ByteArrayOutputStream;
    :cond_153
    move-object/from16 v21, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v9

    .line 473
    .end local v0    # "buffer":[B
    .end local v1    # "len":I
    .end local v9    # "type":Ljava/lang/String;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "partURI":Landroid/net/Uri;
    .local v23, "type":Ljava/lang/String;
    if-eqz v10, :cond_166

    .line 475
    :try_start_15b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_15f
    .catchall {:try_start_15b .. :try_end_15e} :catchall_20b

    .line 478
    goto :goto_166

    .line 476
    :catch_15f
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 477
    .local v0, "e":Ljava/io/IOException;
    :try_start_162
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_20b

    .line 478
    nop

    .line 482
    .end local v0    # "e":Ljava/io/IOException;
    :cond_166
    :goto_166
    move-object/from16 v24, v10

    goto/16 :goto_1ce

    .line 473
    .end local v21    # "partURI":Landroid/net/Uri;
    .local v6, "partURI":Landroid/net/Uri;
    .restart local v9    # "type":Ljava/lang/String;
    .local v23, "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_16a
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v9

    move-object v1, v0

    move-object/from16 v24, v10

    .end local v9    # "type":Ljava/lang/String;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "partURI":Landroid/net/Uri;
    .local v23, "type":Ljava/lang/String;
    goto :goto_19f

    .line 468
    .end local v21    # "partURI":Landroid/net/Uri;
    .local v6, "partURI":Landroid/net/Uri;
    .restart local v9    # "type":Ljava/lang/String;
    .local v23, "baos":Ljava/io/ByteArrayOutputStream;
    :catch_175
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    .end local v9    # "type":Ljava/lang/String;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "partURI":Landroid/net/Uri;
    .local v23, "type":Ljava/lang/String;
    goto :goto_18f

    .line 473
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v21    # "partURI":Landroid/net/Uri;
    .local v6, "partURI":Landroid/net/Uri;
    .restart local v9    # "type":Ljava/lang/String;
    .local v23, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v24    # "is":Ljava/io/InputStream;
    :catchall_17f
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v9

    move-object v1, v0

    .end local v9    # "type":Ljava/lang/String;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "partURI":Landroid/net/Uri;
    .local v23, "type":Ljava/lang/String;
    goto :goto_19f

    .line 468
    .end local v21    # "partURI":Landroid/net/Uri;
    .local v6, "partURI":Landroid/net/Uri;
    .restart local v9    # "type":Ljava/lang/String;
    .local v23, "baos":Ljava/io/ByteArrayOutputStream;
    :catch_188
    move-exception v0

    move-object/from16 v21, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v9

    .line 469
    .end local v9    # "type":Ljava/lang/String;
    .restart local v0    # "e":Ljava/io/IOException;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "partURI":Landroid/net/Uri;
    .local v23, "type":Ljava/lang/String;
    :goto_18f
    :try_start_18f
    const-string v1, "Failed to load part data"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 471
    new-instance v1, Lcom/google/android/mms/MmsException;

    invoke-direct {v1, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "c":Landroid/database/Cursor;
    .end local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "partIdx":I
    .end local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v13    # "contentId":[B
    .end local v14    # "contentLocation":[B
    .end local v15    # "contentType":[B
    .end local v17    # "partCount":I
    .end local v18    # "fileName":[B
    .end local v19    # "name":[B
    .end local v20    # "contentDisposition":[B
    .end local v21    # "partURI":Landroid/net/Uri;
    .end local v22    # "charset":Ljava/lang/Integer;
    .end local v23    # "type":Ljava/lang/String;
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v25    # "partId":J
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "msgId":J
    throw v1
    :try_end_19d
    .catchall {:try_start_18f .. :try_end_19d} :catchall_19d

    .line 473
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "partIdx":I
    .restart local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v13    # "contentId":[B
    .restart local v14    # "contentLocation":[B
    .restart local v15    # "contentType":[B
    .restart local v17    # "partCount":I
    .restart local v18    # "fileName":[B
    .restart local v19    # "name":[B
    .restart local v20    # "contentDisposition":[B
    .restart local v21    # "partURI":Landroid/net/Uri;
    .restart local v22    # "charset":Ljava/lang/Integer;
    .restart local v23    # "type":Ljava/lang/String;
    .restart local v24    # "is":Ljava/io/InputStream;
    .restart local v25    # "partId":J
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "msgId":J
    :catchall_19d
    move-exception v0

    move-object v1, v0

    :goto_19f
    if-eqz v24, :cond_1ab

    .line 475
    :try_start_1a1
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a5
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_20b

    .line 478
    goto :goto_1ab

    .line 476
    :catch_1a5
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 477
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_1a8
    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 480
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1ab
    :goto_1ab
    nop

    .end local v4    # "c":Landroid/database/Cursor;
    .end local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "msgId":J
    throw v1

    .line 451
    .end local v21    # "partURI":Landroid/net/Uri;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .local v6, "partURI":Landroid/net/Uri;
    .restart local v9    # "type":Ljava/lang/String;
    .local v23, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "msgId":J
    :cond_1ad
    move-object/from16 v21, v6

    move-object/from16 v6, v23

    move-object/from16 v23, v9

    .line 453
    .end local v9    # "type":Ljava/lang/String;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "partURI":Landroid/net/Uri;
    .local v23, "type":Ljava/lang/String;
    :goto_1b3
    const/16 v0, 0x8

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    if-eqz v0, :cond_1bf

    move-object v9, v0

    goto :goto_1c1

    :cond_1bf
    const-string v9, ""

    :goto_1c1
    invoke-direct {v1, v9}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v1

    .line 456
    .local v1, "blob":[B
    array-length v9, v1

    const/4 v10, 0x0

    invoke-virtual {v6, v1, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 457
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "blob":[B
    nop

    .line 482
    :goto_1ce
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_1ea

    .line 444
    .end local v23    # "type":Ljava/lang/String;
    .end local v24    # "is":Ljava/io/InputStream;
    .end local v25    # "partId":J
    .local v6, "partURI":Landroid/net/Uri;
    .local v9, "partId":J
    .local v21, "type":Ljava/lang/String;
    :cond_1d6
    move-wide/from16 v25, v9

    move-object/from16 v23, v21

    move-object/from16 v21, v6

    .end local v6    # "partURI":Landroid/net/Uri;
    .end local v9    # "partId":J
    .local v21, "partURI":Landroid/net/Uri;
    .restart local v23    # "type":Ljava/lang/String;
    .restart local v25    # "partId":J
    goto :goto_1ea

    .line 443
    .end local v23    # "type":Ljava/lang/String;
    .end local v25    # "partId":J
    .restart local v6    # "partURI":Landroid/net/Uri;
    .restart local v9    # "partId":J
    .local v21, "type":Ljava/lang/String;
    :cond_1dd
    move-wide/from16 v25, v9

    move-object/from16 v23, v21

    move-object/from16 v21, v6

    .end local v6    # "partURI":Landroid/net/Uri;
    .end local v9    # "partId":J
    .local v21, "partURI":Landroid/net/Uri;
    .restart local v23    # "type":Ljava/lang/String;
    .restart local v25    # "partId":J
    goto :goto_1ea

    .line 442
    .end local v23    # "type":Ljava/lang/String;
    .end local v25    # "partId":J
    .restart local v6    # "partURI":Landroid/net/Uri;
    .restart local v9    # "partId":J
    .local v21, "type":Ljava/lang/String;
    :cond_1e4
    move-wide/from16 v25, v9

    move-object/from16 v23, v21

    move-object/from16 v21, v6

    .line 484
    .end local v6    # "partURI":Landroid/net/Uri;
    .end local v9    # "partId":J
    .local v21, "partURI":Landroid/net/Uri;
    .restart local v23    # "type":Ljava/lang/String;
    .restart local v25    # "partId":J
    :goto_1ea
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "partIdx":I
    .local v0, "partIdx":I
    aput-object v8, v5, v7

    .line 485
    .end local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v13    # "contentId":[B
    .end local v14    # "contentLocation":[B
    .end local v15    # "contentType":[B
    .end local v18    # "fileName":[B
    .end local v19    # "name":[B
    .end local v20    # "contentDisposition":[B
    .end local v21    # "partURI":Landroid/net/Uri;
    .end local v22    # "charset":Ljava/lang/Integer;
    .end local v23    # "type":Ljava/lang/String;
    .end local v25    # "partId":J
    move-object/from16 v1, p0

    move v7, v0

    move/from16 v6, v17

    goto/16 :goto_47

    .line 419
    .end local v0    # "partIdx":I
    .end local v17    # "partCount":I
    .local v6, "partCount":I
    .restart local v7    # "partIdx":I
    .restart local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .local v9, "charset":Ljava/lang/Integer;
    .local v10, "contentDisposition":[B
    .restart local v13    # "contentId":[B
    .restart local v14    # "contentLocation":[B
    .restart local v15    # "contentType":[B
    :cond_1f5
    move/from16 v17, v6

    move-object/from16 v22, v9

    move-object/from16 v20, v10

    .end local v6    # "partCount":I
    .end local v9    # "charset":Ljava/lang/Integer;
    .end local v10    # "contentDisposition":[B
    .restart local v17    # "partCount":I
    .restart local v20    # "contentDisposition":[B
    .restart local v22    # "charset":Ljava/lang/Integer;
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Content-Type must be set."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v4    # "c":Landroid/database/Cursor;
    .end local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "msgId":J
    throw v0
    :try_end_203
    .catchall {:try_start_1a8 .. :try_end_203} :catchall_20b

    .line 388
    .end local v8    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v13    # "contentId":[B
    .end local v14    # "contentLocation":[B
    .end local v15    # "contentType":[B
    .end local v17    # "partCount":I
    .end local v20    # "contentDisposition":[B
    .end local v22    # "charset":Ljava/lang/Integer;
    .restart local v4    # "c":Landroid/database/Cursor;
    .restart local v5    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v6    # "partCount":I
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "msgId":J
    :cond_203
    move/from16 v17, v6

    .line 487
    .end local v6    # "partCount":I
    .end local v7    # "partIdx":I
    if-eqz v4, :cond_20a

    .line 488
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_20a
    return-object v5

    .line 487
    :catchall_20b
    move-exception v0

    if-eqz v4, :cond_211

    .line 488
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 490
    :cond_211
    throw v0

    .line 382
    :cond_212
    :goto_212
    const/4 v0, 0x0

    .line 487
    if-eqz v4, :cond_218

    .line 488
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_218
    return-object v0
.end method

.method private greylist loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V
    .registers 15
    .param p1, "addressType"    # I
    .param p4, "excludeMyNumber"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Lcom/google/android/mms/pdu/EncodedStringValue;",
            ">;Z)V"
        }
    .end annotation

    .line 1438
    .local p2, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1439
    .local v0, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v0, :cond_d

    .line 1440
    return-void

    .line 1444
    :cond_d
    if-eqz p4, :cond_14

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 1445
    return-void

    .line 1447
    :cond_14
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 1448
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1449
    .local v2, "myPhoneNumbers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p4, :cond_51

    .line 1451
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 1452
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1453
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 1454
    .local v5, "myNumber":Ljava/lang/String;
    if-eqz v5, :cond_50

    .line 1455
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1457
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "myNumber":Ljava/lang/String;
    :cond_50
    goto :goto_29

    .line 1460
    :cond_51
    array-length v3, v0

    const/4 v4, 0x0

    :goto_53
    if-ge v4, v3, :cond_8d

    aget-object v5, v0, v4

    .line 1461
    .local v5, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_8a

    .line 1462
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1463
    .local v6, "number":Ljava/lang/String;
    if-eqz p4, :cond_81

    .line 1464
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_63
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1465
    .local v8, "myNumber":Ljava/lang/String;
    invoke-static {v6, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 1466
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7f

    .line 1468
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1469
    goto :goto_80

    .line 1471
    .end local v8    # "myNumber":Ljava/lang/String;
    :cond_7f
    goto :goto_63

    :cond_80
    :goto_80
    goto :goto_8a

    .line 1472
    :cond_81
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8a

    .line 1473
    invoke-virtual {p2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1460
    .end local v5    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v6    # "number":Ljava/lang/String;
    :cond_8a
    :goto_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 1477
    :cond_8d
    return-void
.end method

.method private greylist persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 12
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 699
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 701
    .local v0, "values":Landroid/content/ContentValues;
    array-length v1, p4

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_59

    aget-object v3, p4, v2

    .line 702
    .local v3, "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 703
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "charset"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 705
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/addr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 708
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v4, v0}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 701
    .end local v3    # "addr":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "uri":Landroid/net/Uri;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 710
    :cond_59
    return-void
.end method

.method private blacklist persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 28
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 801
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "content://mms/resetFilePerm/"

    const-string v6, "IOException while closing: "

    const-string v7, "PduPersister"

    const/4 v8, 0x0

    .line 802
    .local v8, "os":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 803
    .local v9, "is":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 804
    .local v10, "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    const/4 v11, 0x0

    .line 805
    .local v11, "dataUri":Landroid/net/Uri;
    const/4 v12, 0x0

    .line 808
    .local v12, "path":Ljava/lang/String;
    :try_start_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    move-object v14, v0

    .line 809
    .local v14, "data":[B
    const-string v0, "text/plain"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29e

    const-string v0, "application/smil"

    .line 810
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_299

    const-string v0, "text/html"

    .line 811
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    move-object/from16 v17, v8

    move-object/from16 v16, v11

    goto/16 :goto_2a2

    .line 821
    :cond_36
    invoke-static/range {p3 .. p3}, Lcom/google/android/mms/util/DownloadDrmHelper;->isDrmConvertNeeded(Ljava/lang/String;)Z

    move-result v0
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_3a} :catch_38f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_3a} :catch_37f
    .catchall {:try_start_13 .. :try_end_3a} :catchall_378

    move v15, v0

    .line 822
    .local v15, "isDrm":Z
    if-eqz v15, :cond_152

    .line 823
    if-eqz v2, :cond_125

    .line 824
    :try_start_3f
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const-string v13, "r"

    .line 825
    invoke-virtual {v0, v2, v13}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_105
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_47} :catch_38f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_47} :catch_37f
    .catchall {:try_start_3f .. :try_end_47} :catchall_378

    move-object v13, v0

    .line 826
    .local v13, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_48
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v16
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_ec

    const-wide/16 v18, 0x0

    cmp-long v0, v16, v18

    if-lez v0, :cond_dd

    .line 831
    if-eqz v13, :cond_5f

    :try_start_54
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58
    .catch Ljava/io/FileNotFoundException; {:try_start_54 .. :try_end_57} :catch_296
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_293
    .catchall {:try_start_54 .. :try_end_57} :catchall_39f

    goto :goto_5f

    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_58
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v16, v11

    goto/16 :goto_10a

    .line 901
    .restart local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_5f
    :goto_5f
    if-eqz v8, :cond_83

    .line 903
    :try_start_61
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_67

    .line 906
    move-object/from16 v16, v11

    goto :goto_85

    .line 904
    :catch_67
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 905
    .local v0, "e":Ljava/io/IOException;
    move-object/from16 v16, v11

    .end local v11    # "dataUri":Landroid/net/Uri;
    .local v16, "dataUri":Landroid/net/Uri;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    .line 901
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :cond_83
    move-object/from16 v16, v11

    .line 908
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    :goto_85
    if-eqz v9, :cond_a2

    .line 910
    :try_start_87
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    .line 913
    goto :goto_a2

    .line 911
    :catch_8b
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 912
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a2
    :goto_a2
    if-eqz v10, :cond_dc

    .line 916
    invoke-virtual {v10, v12}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "f":Ljava/io/File;
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v20, v6

    .line 922
    .local v20, "values":Landroid/content/ContentValues;
    iget-object v6, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 922
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-static/range {v17 .. v22}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 829
    .end local v0    # "f":Ljava/io/File;
    .end local v20    # "values":Landroid/content/ContentValues;
    :cond_dc
    return-void

    .line 831
    .end local v16    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :cond_dd
    move-object/from16 v16, v11

    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    if-eqz v13, :cond_e9

    :try_start_e1
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_e5
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_e4} :catch_271
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_26c
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_266

    goto :goto_e9

    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_e5
    move-exception v0

    move-object/from16 v17, v8

    goto :goto_10a

    .line 833
    :cond_e9
    :goto_e9
    move-object/from16 v17, v8

    goto :goto_129

    .line 824
    .end local v16    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_ec
    move-exception v0

    move-object/from16 v16, v11

    move-object v11, v0

    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    if-eqz v13, :cond_100

    :try_start_f2
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f8

    move-object/from16 v17, v8

    goto :goto_102

    :catchall_f8
    move-exception v0

    move-object/from16 v17, v8

    move-object v8, v0

    .end local v8    # "os":Ljava/io/OutputStream;
    .local v17, "os":Ljava/io/OutputStream;
    :try_start_fc
    invoke-virtual {v11, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_102

    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    :cond_100
    move-object/from16 v17, v8

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v12    # "path":Ljava/lang/String;
    .end local v14    # "data":[B
    .end local v15    # "isDrm":Z
    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :goto_102
    throw v11
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_103} :catch_103
    .catch Ljava/io/FileNotFoundException; {:try_start_fc .. :try_end_103} :catch_372
    .catch Ljava/io/IOException; {:try_start_fc .. :try_end_103} :catch_36c
    .catchall {:try_start_fc .. :try_end_103} :catchall_365

    .line 831
    .end local v13    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v14    # "data":[B
    .restart local v15    # "isDrm":Z
    .restart local v16    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "os":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catch_103
    move-exception v0

    goto :goto_10a

    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :catch_105
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v16, v11

    .line 832
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :goto_10a
    :try_start_10a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t get file info for: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_129

    .line 823
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :cond_125
    move-object/from16 v17, v8

    move-object/from16 v16, v11

    .line 836
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :goto_129
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/google/android/mms/util/DrmConvertSession;->open(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/mms/util/DrmConvertSession;

    move-result-object v0

    move-object v10, v0

    .line 837
    if-eqz v10, :cond_133

    goto :goto_156

    .line 838
    :cond_133
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Mimetype "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " can not be converted."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v12    # "path":Ljava/lang/String;
    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local v17    # "os":Ljava/io/OutputStream;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v0

    .line 822
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :cond_152
    move-object/from16 v17, v8

    move-object/from16 v16, v11

    .line 844
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :goto_156
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_10a .. :try_end_15c} :catch_372
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_15c} :catch_36c
    .catchall {:try_start_10a .. :try_end_15c} :catchall_365

    move-object v8, v0

    .line 845
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    const-string v0, "Error converting drm data."

    if-nez v14, :cond_276

    .line 846
    :try_start_161
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v11
    :try_end_165
    .catch Ljava/io/FileNotFoundException; {:try_start_161 .. :try_end_165} :catch_271
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_165} :catch_26c
    .catchall {:try_start_161 .. :try_end_165} :catchall_266

    .line 847
    .end local v16    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    if-eqz v11, :cond_1ec

    :try_start_167
    invoke-virtual {v11, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16f

    goto/16 :goto_1ec

    .line 853
    :cond_16f
    if-eqz v4, :cond_17e

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17e

    .line 854
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/InputStream;

    move-object v9, v13

    .line 856
    :cond_17e
    if-nez v9, :cond_187

    .line 857
    iget-object v13, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v13, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v13
    :try_end_186
    .catch Ljava/io/FileNotFoundException; {:try_start_167 .. :try_end_186} :catch_296
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_186} :catch_293
    .catchall {:try_start_167 .. :try_end_186} :catchall_39f

    move-object v9, v13

    .line 864
    :cond_187
    const/16 v13, 0x2000

    :try_start_189
    new-array v13, v13, [B

    .line 865
    .local v13, "buffer":[B
    const/16 v16, 0x0

    .local v16, "len":I
    :goto_18d
    invoke-virtual {v9, v13}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_191
    .catch Ljava/io/FileNotFoundException; {:try_start_189 .. :try_end_191} :catch_1e7
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_191} :catch_1e2
    .catchall {:try_start_189 .. :try_end_191} :catchall_1dc

    move/from16 v17, v3

    .end local v16    # "len":I
    .local v17, "len":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d6

    .line 866
    if-nez v15, :cond_1a3

    .line 867
    move/from16 v3, v17

    const/4 v4, 0x0

    .end local v17    # "len":I
    .local v3, "len":I
    :try_start_19b
    invoke-virtual {v8, v13, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19e
    .catch Ljava/io/FileNotFoundException; {:try_start_19b .. :try_end_19e} :catch_296
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19e} :catch_293
    .catchall {:try_start_19b .. :try_end_19e} :catchall_39f

    move/from16 v16, v3

    move-object/from16 v17, v9

    goto :goto_1b5

    .line 869
    .end local v3    # "len":I
    .restart local v17    # "len":I
    :cond_1a3
    move/from16 v3, v17

    .end local v17    # "len":I
    .restart local v3    # "len":I
    :try_start_1a5
    invoke-virtual {v10, v13, v3}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v4

    .line 870
    .local v4, "convertedData":[B
    if-eqz v4, :cond_1bc

    .line 871
    move/from16 v16, v3

    .end local v3    # "len":I
    .restart local v16    # "len":I
    array-length v3, v4
    :try_end_1ae
    .catch Ljava/io/FileNotFoundException; {:try_start_1a5 .. :try_end_1ae} :catch_1e7
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1ae} :catch_1e2
    .catchall {:try_start_1a5 .. :try_end_1ae} :catchall_1dc

    move-object/from16 v17, v9

    const/4 v9, 0x0

    .end local v9    # "is":Ljava/io/InputStream;
    .local v17, "is":Ljava/io/InputStream;
    :try_start_1b1
    invoke-virtual {v8, v4, v9, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 875
    .end local v4    # "convertedData":[B
    nop

    .line 865
    .end local v16    # "len":I
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v9    # "is":Ljava/io/InputStream;
    :goto_1b5
    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v9, v17

    .end local v3    # "len":I
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v16    # "len":I
    .restart local v17    # "is":Ljava/io/InputStream;
    goto :goto_18d

    .line 873
    .end local v16    # "len":I
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v3    # "len":I
    .restart local v4    # "convertedData":[B
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_1bc
    move/from16 v16, v3

    move-object/from16 v17, v9

    .end local v3    # "len":I
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v16    # "len":I
    .restart local v17    # "is":Ljava/io/InputStream;
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v12    # "path":Ljava/lang/String;
    .end local v17    # "is":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v3
    :try_end_1c6
    .catch Ljava/io/FileNotFoundException; {:try_start_1b1 .. :try_end_1c6} :catch_1d1
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_1c6} :catch_1cc
    .catchall {:try_start_1b1 .. :try_end_1c6} :catchall_1c6

    .line 901
    .end local v4    # "convertedData":[B
    .end local v13    # "buffer":[B
    .end local v14    # "data":[B
    .end local v15    # "isDrm":Z
    .end local v16    # "len":I
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v17    # "is":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catchall_1c6
    move-exception v0

    move-object v3, v0

    move-object/from16 v9, v17

    goto/16 :goto_3a1

    .line 897
    :catch_1cc
    move-exception v0

    move-object/from16 v9, v17

    goto/16 :goto_384

    .line 894
    :catch_1d1
    move-exception v0

    move-object/from16 v9, v17

    goto/16 :goto_394

    .line 865
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v13    # "buffer":[B
    .restart local v14    # "data":[B
    .restart local v15    # "isDrm":Z
    .local v17, "len":I
    :cond_1d6
    move/from16 v16, v17

    move-object/from16 v17, v9

    .line 877
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v13    # "buffer":[B
    .local v17, "is":Ljava/io/InputStream;
    goto/16 :goto_2d3

    .line 901
    .end local v14    # "data":[B
    .end local v15    # "isDrm":Z
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_1dc
    move-exception v0

    move-object/from16 v17, v9

    move-object v3, v0

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    goto/16 :goto_3a1

    .line 897
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_1e2
    move-exception v0

    move-object/from16 v17, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    goto/16 :goto_384

    .line 894
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_1e7
    move-exception v0

    move-object/from16 v17, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v17    # "is":Ljava/io/InputStream;
    goto/16 :goto_394

    .line 848
    .end local v17    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v14    # "data":[B
    .restart local v15    # "isDrm":Z
    :cond_1ec
    :goto_1ec
    :try_start_1ec
    const-string v0, "Can\'t find data for this part."

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catch Ljava/io/FileNotFoundException; {:try_start_1ec .. :try_end_1f1} :catch_296
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1f1} :catch_293
    .catchall {:try_start_1ec .. :try_end_1f1} :catchall_39f

    .line 901
    if-eqz v8, :cond_20e

    .line 903
    :try_start_1f3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_1f6
    .catch Ljava/io/IOException; {:try_start_1f3 .. :try_end_1f6} :catch_1f7

    .line 906
    goto :goto_20e

    .line 904
    :catch_1f7
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 905
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20e
    :goto_20e
    if-eqz v9, :cond_22b

    .line 910
    :try_start_210
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_213
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_213} :catch_214

    .line 913
    goto :goto_22b

    .line 911
    :catch_214
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 912
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v0    # "e":Ljava/io/IOException;
    :cond_22b
    :goto_22b
    if-eqz v10, :cond_265

    .line 916
    invoke-virtual {v10, v12}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "f":Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v19, v3

    .line 922
    .local v19, "values":Landroid/content/ContentValues;
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 922
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v21}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 849
    .end local v0    # "f":Ljava/io/File;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_265
    return-void

    .line 901
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v14    # "data":[B
    .end local v15    # "isDrm":Z
    .local v16, "dataUri":Landroid/net/Uri;
    :catchall_266
    move-exception v0

    move-object v3, v0

    move-object/from16 v11, v16

    goto/16 :goto_3a1

    .line 897
    :catch_26c
    move-exception v0

    move-object/from16 v11, v16

    goto/16 :goto_384

    .line 894
    :catch_271
    move-exception v0

    move-object/from16 v11, v16

    goto/16 :goto_394

    .line 881
    .restart local v14    # "data":[B
    .restart local v15    # "isDrm":Z
    :cond_276
    if-nez v15, :cond_27e

    .line 882
    :try_start_278
    invoke-virtual {v8, v14}, Ljava/io/OutputStream;->write([B)V
    :try_end_27b
    .catch Ljava/io/FileNotFoundException; {:try_start_278 .. :try_end_27b} :catch_271
    .catch Ljava/io/IOException; {:try_start_278 .. :try_end_27b} :catch_26c
    .catchall {:try_start_278 .. :try_end_27b} :catchall_266

    move-object/from16 v11, v16

    goto :goto_2d3

    .line 884
    :cond_27e
    move-object/from16 v11, p2

    .line 885
    .end local v16    # "dataUri":Landroid/net/Uri;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :try_start_280
    array-length v3, v14

    invoke-virtual {v10, v14, v3}, Lcom/google/android/mms/util/DrmConvertSession;->convert([BI)[B

    move-result-object v3

    .line 886
    .local v3, "convertedData":[B
    if-eqz v3, :cond_28d

    .line 887
    array-length v0, v3

    const/4 v4, 0x0

    invoke-virtual {v8, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2d3

    .line 889
    :cond_28d
    new-instance v4, Lcom/google/android/mms/MmsException;

    invoke-direct {v4, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v12    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v4
    :try_end_293
    .catch Ljava/io/FileNotFoundException; {:try_start_280 .. :try_end_293} :catch_296
    .catch Ljava/io/IOException; {:try_start_280 .. :try_end_293} :catch_293
    .catchall {:try_start_280 .. :try_end_293} :catchall_39f

    .line 897
    .end local v3    # "convertedData":[B
    .end local v14    # "data":[B
    .end local v15    # "isDrm":Z
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catch_293
    move-exception v0

    goto/16 :goto_384

    .line 894
    :catch_296
    move-exception v0

    goto/16 :goto_394

    .line 810
    .restart local v14    # "data":[B
    :cond_299
    move-object/from16 v17, v8

    move-object/from16 v16, v11

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    .local v17, "os":Ljava/io/OutputStream;
    goto :goto_2a2

    .line 809
    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :cond_29e
    move-object/from16 v17, v8

    move-object/from16 v16, v11

    .line 812
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :goto_2a2
    :try_start_2a2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 813
    .local v0, "cv":Landroid/content/ContentValues;
    if-nez v14, :cond_2b7

    .line 814
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object v14, v3

    .line 816
    :cond_2b7
    const-string v3, "text"

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v14}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3
    :try_end_2cc
    .catch Ljava/io/FileNotFoundException; {:try_start_2a2 .. :try_end_2cc} :catch_372
    .catch Ljava/io/IOException; {:try_start_2a2 .. :try_end_2cc} :catch_36c
    .catchall {:try_start_2a2 .. :try_end_2cc} :catchall_365

    const/4 v4, 0x1

    if-ne v3, v4, :cond_348

    .line 820
    .end local v0    # "cv":Landroid/content/ContentValues;
    move-object/from16 v11, v16

    move-object/from16 v8, v17

    .line 901
    .end local v14    # "data":[B
    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :goto_2d3
    if-eqz v8, :cond_2f0

    .line 903
    :try_start_2d5
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_2d8
    .catch Ljava/io/IOException; {:try_start_2d5 .. :try_end_2d8} :catch_2d9

    .line 906
    goto :goto_2f0

    .line 904
    :catch_2d9
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 905
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2f0
    :goto_2f0
    if-eqz v9, :cond_30d

    .line 910
    :try_start_2f2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2f5
    .catch Ljava/io/IOException; {:try_start_2f2 .. :try_end_2f5} :catch_2f6

    .line 913
    goto :goto_30d

    .line 911
    :catch_2f6
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 912
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v0    # "e":Ljava/io/IOException;
    :cond_30d
    :goto_30d
    if-eqz v10, :cond_347

    .line 916
    invoke-virtual {v10, v12}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "f":Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v19, v3

    .line 922
    .restart local v19    # "values":Landroid/content/ContentValues;
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 922
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-static/range {v16 .. v21}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 927
    .end local v0    # "f":Ljava/io/File;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_347
    return-void

    .line 818
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .local v0, "cv":Landroid/content/ContentValues;
    .restart local v14    # "data":[B
    .restart local v16    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :cond_348
    :try_start_348
    new-instance v3, Lcom/google/android/mms/MmsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to update "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v12    # "path":Ljava/lang/String;
    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local v17    # "os":Ljava/io/OutputStream;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v3
    :try_end_365
    .catch Ljava/io/FileNotFoundException; {:try_start_348 .. :try_end_365} :catch_372
    .catch Ljava/io/IOException; {:try_start_348 .. :try_end_365} :catch_36c
    .catchall {:try_start_348 .. :try_end_365} :catchall_365

    .line 901
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v14    # "data":[B
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "os":Ljava/io/OutputStream;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catchall_365
    move-exception v0

    move-object v3, v0

    move-object/from16 v11, v16

    move-object/from16 v8, v17

    goto :goto_3a1

    .line 897
    :catch_36c
    move-exception v0

    move-object/from16 v11, v16

    move-object/from16 v8, v17

    goto :goto_384

    .line 894
    :catch_372
    move-exception v0

    move-object/from16 v11, v16

    move-object/from16 v8, v17

    goto :goto_394

    .line 901
    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :catchall_378
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v16, v11

    move-object v3, v0

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .restart local v16    # "dataUri":Landroid/net/Uri;
    .restart local v17    # "os":Ljava/io/OutputStream;
    goto :goto_3a1

    .line 897
    .end local v16    # "dataUri":Landroid/net/Uri;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    :catch_37f
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v16, v11

    .line 898
    .local v0, "e":Ljava/io/IOException;
    :goto_384
    :try_start_384
    const-string v3, "Failed to read/write data."

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v12    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v3

    .line 894
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catch_38f
    move-exception v0

    move-object/from16 v17, v8

    move-object/from16 v16, v11

    .line 895
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_394
    const-string v3, "Failed to open Input/Output stream."

    invoke-static {v7, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 896
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3, v0}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .end local v11    # "dataUri":Landroid/net/Uri;
    .end local v12    # "path":Ljava/lang/String;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "contentType":Ljava/lang/String;
    .end local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    throw v3
    :try_end_39f
    .catchall {:try_start_384 .. :try_end_39f} :catchall_39f

    .line 901
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "drmConvertSession":Lcom/google/android/mms/util/DrmConvertSession;
    .restart local v11    # "dataUri":Landroid/net/Uri;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "contentType":Ljava/lang/String;
    .restart local p4    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catchall_39f
    move-exception v0

    move-object v3, v0

    :goto_3a1
    if-eqz v8, :cond_3be

    .line 903
    :try_start_3a3
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_3a6
    .catch Ljava/io/IOException; {:try_start_3a3 .. :try_end_3a6} :catch_3a7

    .line 906
    goto :goto_3be

    .line 904
    :catch_3a7
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 905
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 908
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3be
    :goto_3be
    if-eqz v9, :cond_3db

    .line 910
    :try_start_3c0
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3c3
    .catch Ljava/io/IOException; {:try_start_3c0 .. :try_end_3c3} :catch_3c4

    .line 913
    goto :goto_3db

    .line 911
    :catch_3c4
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 912
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3db
    :goto_3db
    if-eqz v10, :cond_415

    .line 916
    invoke-virtual {v10, v12}, Lcom/google/android/mms/util/DrmConvertSession;->close(Ljava/lang/String;)I

    .line 920
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 921
    .local v0, "f":Ljava/io/File;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    move-object/from16 v19, v4

    .line 922
    .restart local v19    # "values":Landroid/content/ContentValues;
    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 923
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 922
    move-object/from16 v16, v4

    move-object/from16 v17, v6

    invoke-static/range {v16 .. v21}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 926
    .end local v0    # "f":Ljava/io/File;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_415
    throw v3
.end method

.method private blacklist setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 10
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .line 317
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 319
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 320
    .local v1, "charsetColumnIndex":I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 321
    .local v2, "charset":I
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 322
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 323
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {p3, v3, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 325
    .end local v1    # "charsetColumnIndex":I
    .end local v2    # "charset":I
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_2c
    return-void
.end method

.method private blacklist setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .line 348
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 349
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 350
    .local v0, "l":J
    invoke-virtual {p3, v0, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    .line 352
    .end local v0    # "l":J
    :cond_d
    return-void
.end method

.method private blacklist setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 6
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .line 339
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 340
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 341
    .local v0, "b":I
    invoke-virtual {p3, v0, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 343
    .end local v0    # "b":I
    :cond_d
    return-void
.end method

.method private blacklist setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    .registers 7
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "columnIndex"    # I
    .param p3, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;
    .param p4, "mapColumn"    # I

    .line 330
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 332
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p3, v1, p4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 334
    :cond_d
    return-void
.end method

.method public static greylist toIsoString([B)Ljava/lang/String;
    .registers 4
    .param p0, "bytes"    # [B

    .line 1520
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 1521
    :catch_8
    move-exception v0

    .line 1523
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1524
    const-string v1, ""

    return-object v1
.end method

.method private greylist updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .registers 10
    .param p1, "msgId"    # J
    .param p3, "type"    # I
    .param p4, "array"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 933
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 934
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 933
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 937
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 938
    return-void
.end method

.method private blacklist updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduPart;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 1055
    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1057
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v1

    .line 1058
    .local v1, "charset":I
    if-eqz v1, :cond_15

    .line 1059
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "chset"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1062
    :cond_15
    const/4 v2, 0x0

    .line 1063
    .local v2, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    if-eqz v3, :cond_b6

    .line 1064
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v8

    .line 1065
    .end local v2    # "contentType":Ljava/lang/String;
    .local v8, "contentType":Ljava/lang/String;
    const-string v2, "ct"

    invoke-virtual {v0, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 1071
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1072
    .local v2, "fileName":Ljava/lang/String;
    const-string v3, "fn"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_3d
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v2

    if-eqz v2, :cond_51

    .line 1076
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 1077
    .local v2, "name":Ljava/lang/String;
    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    .end local v2    # "name":Ljava/lang/String;
    :cond_51
    const/4 v2, 0x0

    .line 1081
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v3

    if-eqz v3, :cond_68

    .line 1082
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 1083
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "cd"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_68
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v3

    if-eqz v3, :cond_7e

    .line 1087
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 1088
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "cid"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_7e
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    if-eqz v3, :cond_96

    .line 1092
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v2

    .line 1093
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const-string v4, "cl"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v2

    goto :goto_97

    .line 1091
    :cond_96
    move-object v9, v2

    .line 1096
    .end local v2    # "value":Ljava/lang/Object;
    .local v9, "value":Ljava/lang/Object;
    :goto_97
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, v0

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1101
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    if-nez v2, :cond_b2

    .line 1102
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    .line 1103
    :cond_b2
    invoke-direct {p0, p2, p1, v8, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1105
    :cond_b5
    return-void

    .line 1067
    .end local v8    # "contentType":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Object;
    .local v2, "contentType":Ljava/lang/String;
    :cond_b6
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "MIME type of the part must be set."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public greylist getPendingMessages(J)Landroid/database/Cursor;
    .registers 13
    .param p1, "dueTime"    # J

    .line 1556
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1557
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v1, "protocol"

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1559
    const-string v1, "err_type < ? AND due_time <= ?"

    .line 1562
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v8, v2, [Ljava/lang/String;

    .line 1563
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v8, v3

    .line 1564
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v8, v3

    .line 1567
    .local v8, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    .line 1568
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1567
    const/4 v6, 0x0

    const-string v9, "due_time"

    move-object v7, v1

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public greylist load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 541
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 542
    .local v10, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    const/4 v2, 0x0

    .line 543
    .local v2, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    const/4 v11, 0x0

    .line 544
    .local v11, "msgBox":I
    const-wide/16 v12, -0x1

    .line 546
    .local v12, "threadId":J
    const/4 v14, 0x0

    :try_start_a
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v3
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_24c

    .line 547
    :try_start_d
    invoke-virtual {v3, v9}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_249

    if-eqz v0, :cond_4b

    .line 552
    :try_start_13
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_17
    .catchall {:try_start_13 .. :try_end_16} :catchall_249

    .line 555
    goto :goto_21

    .line 553
    :catch_17
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 554
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1a
    const-string v4, "PduPersister"

    const-string v5, "load: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_21
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v4, v9}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    move-object v2, v0

    .line 557
    if-eqz v2, :cond_49

    .line 558
    invoke-virtual {v2}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_1a .. :try_end_31} :catchall_249

    .line 682
    monitor-enter v4

    .line 683
    if-eqz v10, :cond_3e

    .line 684
    nop

    .line 686
    :try_start_35
    new-instance v3, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    move-object v2, v3

    .line 687
    invoke-virtual {v4, v9, v2}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 689
    :cond_3e
    invoke-virtual {v4, v9, v14}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 690
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v4

    .line 558
    return-object v0

    .line 691
    :catchall_46
    move-exception v0

    monitor-exit v4
    :try_end_48
    .catchall {:try_start_35 .. :try_end_48} :catchall_46

    throw v0

    .line 557
    :cond_49
    move-object v15, v2

    goto :goto_4c

    .line 547
    :cond_4b
    move-object v15, v2

    .line 563
    .end local v2    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v15, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :goto_4c
    :try_start_4c
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v8, 0x1

    invoke-virtual {v0, v9, v8}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 564
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_246

    .line 566
    :try_start_53
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v4, p1

    move v14, v8

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    .line 568
    .local v2, "c":Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    move-object v3, v0

    .line 570
    .local v3, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_243

    .line 573
    .local v4, "msgId":J
    if-eqz v2, :cond_222

    :try_start_71
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v14, :cond_222

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_222

    .line 577
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move v11, v0

    .line 578
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v12, v6

    .line 580
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 581
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_92
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 582
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 583
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 582
    invoke-direct {v1, v2, v8, v3, v14}, Lcom/google/android/mms/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    .line 584
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_92

    .line 586
    :cond_b7
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    move-object v0, v6

    .line 587
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 588
    .restart local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 589
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 588
    invoke-direct {v1, v2, v8, v3, v14}, Lcom/google/android/mms/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    .line 590
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_c2

    .line 592
    :cond_e7
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    move-object v0, v6

    .line 593
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_117

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 594
    .restart local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 595
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 594
    invoke-direct {v1, v2, v8, v3, v14}, Lcom/google/android/mms/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V

    .line 596
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_f2

    .line 598
    :cond_117
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    move-object v0, v6

    .line 599
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_122
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_147

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 600
    .restart local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    nop

    .line 601
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 600
    invoke-direct {v1, v2, v8, v3, v14}, Lcom/google/android/mms/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google/android/mms/pdu/PduHeaders;I)V
    :try_end_146
    .catchall {:try_start_71 .. :try_end_146} :catchall_23b

    .line 602
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_122

    .line 604
    :cond_147
    if-eqz v2, :cond_14c

    .line 605
    :try_start_149
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 610
    :cond_14c
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_218

    .line 615
    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadAddress(JLcom/google/android/mms/pdu/PduHeaders;)V

    .line 617
    const/16 v6, 0x8c

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 618
    .local v6, "msgType":I
    new-instance v7, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 622
    .local v7, "body":Lcom/google/android/mms/pdu/PduBody;
    const/16 v8, 0x84

    if-eq v6, v8, :cond_16c

    const/16 v8, 0x80

    if-ne v6, v8, :cond_169

    goto :goto_16c

    :cond_169
    move-object/from16 v17, v0

    goto :goto_187

    .line 624
    :cond_16c
    :goto_16c
    invoke-direct {v1, v4, v5}, Lcom/google/android/mms/pdu/PduPersister;->loadParts(J)[Lcom/google/android/mms/pdu/PduPart;

    move-result-object v8

    .line 625
    .local v8, "parts":[Lcom/google/android/mms/pdu/PduPart;
    if-eqz v8, :cond_185

    .line 626
    array-length v14, v8

    .line 627
    .local v14, "partsNum":I
    const/16 v16, 0x0

    move-object/from16 v17, v0

    move/from16 v0, v16

    .local v0, "i":I
    .local v17, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :goto_179
    if-ge v0, v14, :cond_187

    .line 628
    aget-object v1, v8, v0

    invoke-virtual {v7, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 627
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    goto :goto_179

    .line 625
    .end local v14    # "partsNum":I
    .end local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_185
    move-object/from16 v17, v0

    .line 633
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v8    # "parts":[Lcom/google/android/mms/pdu/PduPart;
    .restart local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :cond_187
    :goto_187
    packed-switch v6, :pswitch_data_268

    .line 678
    new-instance v0, Lcom/google/android/mms/MmsException;

    goto/16 :goto_1fd

    .line 641
    :pswitch_18e
    new-instance v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 642
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .local v0, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v1, v0

    goto :goto_1e2

    .line 656
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_195
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 657
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v1, v0

    goto :goto_1e2

    .line 638
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_19c
    new-instance v0, Lcom/google/android/mms/pdu/DeliveryInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 639
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v1, v0

    goto :goto_1e2

    .line 650
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1a3
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 651
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v1, v0

    goto :goto_1e2

    .line 644
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1aa
    new-instance v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-direct {v0, v3, v7}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 645
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v1, v0

    goto :goto_1e2

    .line 653
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1b1
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 654
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v1, v0

    goto :goto_1e2

    .line 635
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1b8
    new-instance v0, Lcom/google/android/mms/pdu/NotificationInd;

    invoke-direct {v0, v3}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 636
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v1, v0

    goto :goto_1e2

    .line 674
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :pswitch_1bf
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported PDU type: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 675
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v11    # "msgBox":I
    .end local v12    # "threadId":J
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0

    .line 647
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v11    # "msgBox":I
    .restart local v12    # "threadId":J
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :pswitch_1dc
    new-instance v0, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v0, v3, v7}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1e1
    .catchall {:try_start_149 .. :try_end_1e1} :catchall_243

    .line 648
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    move-object v1, v0

    .line 682
    .end local v0    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v4    # "msgId":J
    .end local v6    # "msgType":I
    .end local v7    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .local v1, "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    :goto_1e2
    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v2

    .line 683
    nop

    .line 684
    nop

    .line 686
    :try_start_1e7
    new-instance v0, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    move-object v15, v0

    .line 687
    invoke-virtual {v2, v9, v15}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 689
    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 690
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v2

    .line 692
    nop

    .line 693
    return-object v1

    .line 691
    :catchall_1fa
    move-exception v0

    monitor-exit v2
    :try_end_1fc
    .catchall {:try_start_1e7 .. :try_end_1fc} :catchall_1fa

    throw v0

    .line 678
    .end local v1    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v4    # "msgId":J
    .restart local v6    # "msgType":I
    .restart local v7    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    :goto_1fd
    :try_start_1fd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized PDU type: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 679
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v11    # "msgBox":I
    .end local v12    # "threadId":J
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0

    .line 611
    .end local v6    # "msgType":I
    .end local v7    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v11    # "msgBox":I
    .restart local v12    # "threadId":J
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_218
    move-object/from16 v17, v0

    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v11    # "msgBox":I
    .end local v12    # "threadId":J
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_222
    .catchall {:try_start_1fd .. :try_end_222} :catchall_243

    .line 574
    .end local v17    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v11    # "msgBox":I
    .restart local v12    # "threadId":J
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_222
    :try_start_222
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad uri: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v4    # "msgId":J
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v11    # "msgBox":I
    .end local v12    # "threadId":J
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_23b
    .catchall {:try_start_222 .. :try_end_23b} :catchall_23b

    .line 604
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v4    # "msgId":J
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v11    # "msgBox":I
    .restart local v12    # "threadId":J
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_23b
    move-exception v0

    if-eqz v2, :cond_241

    .line 605
    :try_start_23e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_241
    nop

    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v11    # "msgBox":I
    .end local v12    # "threadId":J
    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v0
    :try_end_243
    .catchall {:try_start_23e .. :try_end_243} :catchall_243

    .line 682
    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v4    # "msgId":J
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v11    # "msgBox":I
    .restart local v12    # "threadId":J
    .restart local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_243
    move-exception v0

    move-object v2, v15

    goto :goto_24d

    .line 564
    :catchall_246
    move-exception v0

    move-object v2, v15

    goto :goto_24a

    .end local v15    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .local v2, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :catchall_249
    move-exception v0

    :goto_24a
    :try_start_24a
    monitor-exit v3
    :try_end_24b
    .catchall {:try_start_24a .. :try_end_24b} :catchall_249

    .end local v2    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .end local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .end local v11    # "msgBox":I
    .end local v12    # "threadId":J
    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_24b
    throw v0
    :try_end_24c
    .catchall {:try_start_24b .. :try_end_24c} :catchall_24c

    .line 682
    .restart local v2    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    .restart local v10    # "pdu":Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v11    # "msgBox":I
    .restart local v12    # "threadId":J
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_24c
    move-exception v0

    :goto_24d
    sget-object v1, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v1

    .line 683
    if-eqz v10, :cond_25c

    .line 684
    nop

    .line 686
    :try_start_253
    new-instance v3, Lcom/google/android/mms/util/PduCacheEntry;

    invoke-direct {v3, v10, v11, v12, v13}, Lcom/google/android/mms/util/PduCacheEntry;-><init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V

    move-object v2, v3

    .line 687
    invoke-virtual {v1, v9, v2}, Lcom/google/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google/android/mms/util/PduCacheEntry;)Z

    .line 689
    :cond_25c
    const/4 v3, 0x0

    invoke-virtual {v1, v9, v3}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 690
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v1
    :try_end_264
    .catchall {:try_start_253 .. :try_end_264} :catchall_265

    .line 692
    throw v0

    .line 691
    :catchall_265
    move-exception v0

    :try_start_266
    monitor-exit v1
    :try_end_267
    .catchall {:try_start_266 .. :try_end_267} :catchall_265

    throw v0

    :pswitch_data_268
    .packed-switch 0x80
        :pswitch_1dc
        :pswitch_1bf
        :pswitch_1b8
        :pswitch_1b1
        :pswitch_1aa
        :pswitch_1a3
        :pswitch_19c
        :pswitch_195
        :pswitch_18e
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
        :pswitch_1bf
    .end packed-switch
.end method

.method public greylist move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 14
    .param p1, "from"    # Landroid/net/Uri;
    .param p2, "to"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 1493
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1494
    .local v0, "msgId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_37

    .line 1499
    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1500
    .local v2, "msgBox":Ljava/lang/Integer;
    if-eqz v2, :cond_2f

    .line 1508
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1509
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "msg_box"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1510
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    move-object v8, v3

    invoke-static/range {v5 .. v10}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1511
    invoke-static {p2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 1501
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2f
    new-instance v3, Lcom/google/android/mms/MmsException;

    const-string v4, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v3, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1495
    .end local v2    # "msgBox":Ljava/lang/Integer;
    :cond_37
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Error! ID of the message: -1."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    .registers 36
    .param p1, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "createThreadId"    # Z
    .param p4, "groupMmsEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/GenericPdu;",
            "Landroid/net/Uri;",
            "ZZ",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 1208
    .local p5, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    if-eqz v9, :cond_33a

    .line 1211
    const-wide/16 v3, -0x1

    .line 1213
    .local v3, "msgId":J
    :try_start_a
    invoke-static/range {p2 .. p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_11

    move-wide v3, v5

    .line 1216
    move-wide v10, v3

    goto :goto_13

    .line 1214
    :catch_11
    move-exception v0

    move-wide v10, v3

    .line 1217
    .end local v3    # "msgId":J
    .local v10, "msgId":J
    :goto_13
    const-wide/16 v3, -0x1

    cmp-long v0, v10, v3

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    move v14, v0

    .line 1219
    .local v14, "existingUri":Z
    if-nez v14, :cond_30

    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28

    goto :goto_30

    .line 1220
    :cond_28
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v3, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1226
    :cond_30
    :goto_30
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1229
    :try_start_33
    invoke-virtual {v5, v9}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_332

    if-eqz v0, :cond_4d

    .line 1234
    :try_start_39
    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_39 .. :try_end_3c} :catch_43
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    .line 1237
    goto :goto_4d

    .line 1239
    :catchall_3d
    move-exception v0

    move-object v6, v9

    move-wide/from16 v24, v10

    goto/16 :goto_336

    .line 1235
    :catch_43
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 1236
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_46
    const-string v6, "PduPersister"

    const-string v7, "persist1: "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_3d

    .line 1239
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4d
    :goto_4d
    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_332

    .line 1240
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v9}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 1242
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    .line 1243
    .local v0, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/4 v5, 0x0

    .line 1244
    .local v5, "body":Lcom/google/android/mms/pdu/PduBody;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v15, v6

    .line 1247
    .local v15, "values":Landroid/content/ContentValues;
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 1248
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_68
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_af

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1249
    .local v8, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1250
    .local v12, "field":I
    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v16

    .line 1251
    .local v16, "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v16, :cond_ac

    .line 1252
    sget-object v13, Lcom/google/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1253
    .local v3, "charsetColumn":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1256
    .end local v3    # "charsetColumn":Ljava/lang/String;
    .end local v8    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v12    # "field":I
    .end local v16    # "encodedString":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_ac
    const-wide/16 v3, -0x1

    goto :goto_68

    .line 1258
    :cond_af
    sget-object v3, Lcom/google/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1259
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1260
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v7

    .line 1261
    .local v7, "text":[B
    if-eqz v7, :cond_e2

    .line 1262
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "text":[B
    :cond_e2
    goto :goto_b9

    .line 1266
    :cond_e3
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 1267
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ed
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_117

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1268
    .restart local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v7

    .line 1269
    .local v7, "b":I
    if-eqz v7, :cond_116

    .line 1270
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1272
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v7    # "b":I
    :cond_116
    goto :goto_ed

    .line 1274
    :cond_117
    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 1275
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .local v12, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_121
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1276
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v6

    .line 1277
    .local v6, "l":J
    const-wide/16 v19, -0x1

    cmp-long v8, v6, v19

    if-eqz v8, :cond_14e

    .line 1278
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v15, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1280
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v6    # "l":J
    :cond_14e
    goto :goto_121

    .line 1282
    :cond_14f
    new-instance v3, Ljava/util/HashMap;

    sget-object v4, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v6, v4

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object v13, v3

    .line 1285
    .local v13, "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    array-length v3, v4

    const/4 v6, 0x0

    :goto_15a
    const/16 v7, 0x89

    if-ge v6, v3, :cond_196

    aget v8, v4, v6

    .line 1286
    .local v8, "addrType":I
    const/16 v16, 0x0

    .line 1287
    .local v16, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-ne v8, v7, :cond_17e

    .line 1288
    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 1289
    .local v7, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v7, :cond_177

    .line 1290
    move/from16 v19, v3

    move-object/from16 v20, v4

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1291
    .end local v16    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v4, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v3, 0x0

    aput-object v7, v4, v3

    move-object/from16 v16, v4

    goto :goto_17b

    .line 1289
    .end local v4    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v16    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_177
    move/from16 v19, v3

    move-object/from16 v20, v4

    .line 1293
    .end local v7    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_17b
    move-object/from16 v3, v16

    goto :goto_188

    .line 1294
    :cond_17e
    move/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v16

    move-object/from16 v3, v16

    .line 1296
    .end local v16    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v3, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_188
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    .end local v3    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8    # "addrType":I
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v19

    move-object/from16 v4, v20

    goto :goto_15a

    .line 1299
    :cond_196
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v8, v3

    .line 1300
    .local v8, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v6

    .line 1305
    .local v6, "msgType":I
    const/16 v3, 0x82

    if-eq v6, v3, :cond_1af

    const/16 v4, 0x84

    if-eq v6, v4, :cond_1af

    const/16 v4, 0x80

    if-ne v6, v4, :cond_1ad

    goto :goto_1af

    :cond_1ad
    const/4 v3, 0x0

    goto :goto_1e3

    .line 1308
    :cond_1af
    :goto_1af
    const/16 v4, 0x97

    packed-switch v6, :pswitch_data_344

    :pswitch_1b4
    const/4 v3, 0x0

    goto :goto_1ca

    .line 1311
    :pswitch_1b6
    const/4 v3, 0x0

    invoke-direct {v1, v7, v8, v13, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1319
    if-eqz p4, :cond_1ca

    .line 1320
    const/4 v7, 0x1

    invoke-direct {v1, v4, v8, v13, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1325
    const/16 v4, 0x82

    invoke-direct {v1, v4, v8, v13, v7}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    goto :goto_1ca

    .line 1329
    :pswitch_1c6
    const/4 v3, 0x0

    invoke-direct {v1, v4, v8, v13, v3}, Lcom/google/android/mms/pdu/PduPersister;->loadRecipients(ILjava/util/HashSet;Ljava/util/HashMap;Z)V

    .line 1332
    :cond_1ca
    :goto_1ca
    const-wide/16 v16, 0x0

    .line 1333
    .local v16, "threadId":J
    if-eqz p3, :cond_1da

    invoke-virtual {v8}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1da

    .line 1336
    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v16

    .line 1338
    :cond_1da
    const-string v4, "thread_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v15, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1343
    .end local v16    # "threadId":J
    :goto_1e3
    move-object/from16 v16, v8

    .end local v8    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v16, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1346
    .local v8, "placeholderId":J
    const/4 v4, 0x1

    .line 1349
    .local v4, "textOnly":Z
    const/4 v7, 0x0

    .line 1352
    .local v7, "messageSize":I
    instance-of v3, v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v3, :cond_250

    .line 1353
    move-object v3, v2

    check-cast v3, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 1355
    if-eqz v5, :cond_246

    .line 1356
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 1357
    .local v3, "partsNum":I
    move-object/from16 v19, v0

    .end local v0    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .local v19, "header":Lcom/google/android/mms/pdu/PduHeaders;
    const/4 v0, 0x2

    if-le v3, v0, :cond_202

    .line 1362
    const/4 v4, 0x0

    .line 1364
    :cond_202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_203
    if-ge v0, v3, :cond_23d

    .line 1365
    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 1366
    .local v2, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getDataLength()I

    move-result v20

    add-int v7, v7, v20

    .line 1367
    move/from16 v20, v7

    move-object/from16 v7, p5

    .end local v7    # "messageSize":I
    .local v20, "messageSize":I
    invoke-virtual {v1, v2, v8, v9, v7}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    .line 1371
    move/from16 v21, v3

    .end local v3    # "partsNum":I
    .local v21, "partsNum":I
    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v3

    .line 1372
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_232

    move-object/from16 v22, v2

    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    .local v22, "part":Lcom/google/android/mms/pdu/PduPart;
    const-string v2, "application/smil"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_234

    const-string v2, "text/plain"

    .line 1373
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_234

    .line 1374
    const/4 v4, 0x0

    goto :goto_234

    .line 1372
    .end local v22    # "part":Lcom/google/android/mms/pdu/PduPart;
    .restart local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    :cond_232
    move-object/from16 v22, v2

    .line 1364
    .end local v2    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v3    # "contentType":Ljava/lang/String;
    :cond_234
    :goto_234
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    move/from16 v7, v20

    move/from16 v3, v21

    goto :goto_203

    .end local v20    # "messageSize":I
    .end local v21    # "partsNum":I
    .local v3, "partsNum":I
    .restart local v7    # "messageSize":I
    :cond_23d
    move/from16 v21, v3

    move/from16 v20, v7

    move-object/from16 v7, p5

    .end local v3    # "partsNum":I
    .end local v7    # "messageSize":I
    .restart local v20    # "messageSize":I
    .restart local v21    # "partsNum":I
    move v0, v4

    move-object v2, v5

    goto :goto_259

    .line 1355
    .end local v19    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v20    # "messageSize":I
    .end local v21    # "partsNum":I
    .local v0, "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v7    # "messageSize":I
    :cond_246
    move-object/from16 v19, v0

    move v0, v7

    move-object/from16 v7, p5

    .end local v7    # "messageSize":I
    .local v0, "messageSize":I
    .restart local v19    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    move/from16 v20, v0

    move v0, v4

    move-object v2, v5

    goto :goto_259

    .line 1352
    .end local v19    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .local v0, "header":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v7    # "messageSize":I
    :cond_250
    move-object/from16 v19, v0

    move v0, v7

    move-object/from16 v7, p5

    .end local v7    # "messageSize":I
    .local v0, "messageSize":I
    .restart local v19    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    move/from16 v20, v0

    move v0, v4

    move-object v2, v5

    .line 1381
    .end local v4    # "textOnly":Z
    .end local v5    # "body":Lcom/google/android/mms/pdu/PduBody;
    .local v0, "textOnly":Z
    .local v2, "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v20    # "messageSize":I
    :goto_259
    const-string v3, "text_only"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    const-string v3, "m_size"

    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_273

    .line 1385
    const-string v3, "m_size"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    :cond_273
    const/4 v3, 0x0

    .line 1389
    .local v3, "res":Landroid/net/Uri;
    if-eqz v14, :cond_295

    .line 1390
    move-object/from16 v5, p2

    .line 1391
    .end local v3    # "res":Landroid/net/Uri;
    .local v5, "res":Landroid/net/Uri;
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v17, 0x0

    move/from16 v23, v6

    .end local v6    # "msgType":I
    .local v23, "msgType":I
    move-object v6, v15

    move-object/from16 v7, v21

    move-wide/from16 v24, v10

    move-wide v9, v8

    .end local v8    # "placeholderId":J
    .end local v10    # "msgId":J
    .local v9, "placeholderId":J
    .local v24, "msgId":J
    move-object/from16 v8, v22

    invoke-static/range {v3 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v6, p2

    move-object v3, v5

    move-wide/from16 v4, v24

    goto :goto_2ac

    .line 1393
    .end local v5    # "res":Landroid/net/Uri;
    .end local v9    # "placeholderId":J
    .end local v23    # "msgType":I
    .end local v24    # "msgId":J
    .restart local v3    # "res":Landroid/net/Uri;
    .restart local v6    # "msgType":I
    .restart local v8    # "placeholderId":J
    .restart local v10    # "msgId":J
    :cond_295
    move/from16 v23, v6

    move-wide/from16 v24, v10

    const/16 v17, 0x0

    move-wide v9, v8

    .end local v6    # "msgType":I
    .end local v8    # "placeholderId":J
    .end local v10    # "msgId":J
    .restart local v9    # "placeholderId":J
    .restart local v23    # "msgType":I
    .restart local v24    # "msgId":J
    iget-object v4, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v6, p2

    invoke-static {v4, v5, v6, v15}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 1394
    if-eqz v3, :cond_328

    .line 1399
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1402
    .end local v24    # "msgId":J
    .local v4, "msgId":J
    :goto_2ac
    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 1403
    .end local v15    # "values":Landroid/content/ContentValues;
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "mid"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v8, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1404
    iget-object v8, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "textOnly":Z
    .local v18, "textOnly":Z
    const-string v0, "content://mms/"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "/part"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1405
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 1404
    move-object/from16 v24, v8

    move-object/from16 v25, v11

    move-object/from16 v27, v7

    invoke-static/range {v24 .. v29}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1412
    if-nez v14, :cond_308

    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1417
    :cond_308
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v8, v0

    move/from16 v11, v17

    :goto_30d
    if-ge v11, v8, :cond_327

    aget v15, v0, v11

    .line 1418
    .local v15, "addrType":I
    move-object/from16 v17, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1419
    .local v0, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v0, :cond_322

    .line 1420
    invoke-direct {v1, v4, v5, v15, v0}, Lcom/google/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1417
    .end local v0    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v15    # "addrType":I
    :cond_322
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v17

    goto :goto_30d

    .line 1424
    :cond_327
    return-object v3

    .line 1395
    .end local v4    # "msgId":J
    .end local v7    # "values":Landroid/content/ContentValues;
    .end local v18    # "textOnly":Z
    .local v0, "textOnly":Z
    .local v15, "values":Landroid/content/ContentValues;
    .restart local v24    # "msgId":J
    :cond_328
    move/from16 v18, v0

    .end local v0    # "textOnly":Z
    .restart local v18    # "textOnly":Z
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v4, "persist() failed: return null."

    invoke-direct {v0, v4}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    .end local v2    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v3    # "res":Landroid/net/Uri;
    .end local v9    # "placeholderId":J
    .end local v12    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v13    # "addressMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;[Lcom/google/android/mms/pdu/EncodedStringValue;>;"
    .end local v15    # "values":Landroid/content/ContentValues;
    .end local v16    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "textOnly":Z
    .end local v19    # "header":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v20    # "messageSize":I
    .end local v23    # "msgType":I
    .end local v24    # "msgId":J
    .restart local v10    # "msgId":J
    :catchall_332
    move-exception v0

    move-object v6, v9

    move-wide/from16 v24, v10

    .end local v10    # "msgId":J
    .restart local v24    # "msgId":J
    :goto_336
    :try_start_336
    monitor-exit v5
    :try_end_337
    .catchall {:try_start_336 .. :try_end_337} :catchall_338

    throw v0

    :catchall_338
    move-exception v0

    goto :goto_336

    .line 1209
    .end local v14    # "existingUri":Z
    .end local v24    # "msgId":J
    :cond_33a
    move-object v6, v9

    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v2, "Uri may not be null."

    invoke-direct {v0, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_344
    .packed-switch 0x80
        :pswitch_1c6
        :pswitch_1b4
        :pswitch_1b6
        :pswitch_1b4
        :pswitch_1b6
    .end packed-switch
.end method

.method public greylist persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;
    .registers 13
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p2, "msgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/mms/pdu/PduPart;",
            "J",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .line 720
    .local p4, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/part"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 721
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 723
    .local v1, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v2

    .line 724
    .local v2, "charset":I
    if-eqz v2, :cond_33

    .line 725
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "chset"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    :cond_33
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPartContentType(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v3

    .line 729
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_de

    .line 732
    const-string v4, "image/jpg"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 733
    const-string v3, "image/jpeg"

    .line 736
    :cond_43
    const-string v4, "ct"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v4, "application/smil"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 739
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "seq"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    :cond_5a
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    if-eqz v4, :cond_6e

    .line 746
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 747
    .local v4, "fileName":Ljava/lang/String;
    const-string v5, "fn"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .end local v4    # "fileName":Ljava/lang/String;
    :cond_6e
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    if-eqz v4, :cond_82

    .line 751
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 752
    .local v4, "name":Ljava/lang/String;
    const-string v5, "name"

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    .end local v4    # "name":Ljava/lang/String;
    :cond_82
    const/4 v4, 0x0

    .line 756
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v5

    if-eqz v5, :cond_99

    .line 757
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    .line 758
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v6, "cd"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :cond_99
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v5

    if-eqz v5, :cond_af

    .line 762
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    .line 763
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v6, "cid"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_af
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    if-eqz v5, :cond_c5

    .line 767
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v4

    .line 768
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    const-string v6, "cl"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    :cond_c5
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 772
    .local v5, "res":Landroid/net/Uri;
    if-eqz v5, :cond_d6

    .line 776
    invoke-direct {p0, p1, v5, v3, p4}, Lcom/google/android/mms/pdu/PduPersister;->persistData(Lcom/google/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 779
    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 781
    return-object v5

    .line 773
    :cond_d6
    new-instance v6, Lcom/google/android/mms/MmsException;

    const-string v7, "Failed to persist part, return null."

    invoke-direct {v6, v7}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 742
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "res":Landroid/net/Uri;
    :cond_de
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "MIME type of the part must be set."

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist release()V
    .registers 5

    .line 1546
    const-string v0, "content://mms/9223372036854775807/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1547
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1548
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduPersister;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v1}, Landroid/drm/DrmManagerClient;->release()V

    .line 1549
    return-void
.end method

.method public greylist updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V
    .registers 32
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "sendReq"    # Lcom/google/android/mms/pdu/SendReq;

    .line 949
    move-object/from16 v1, p0

    move-object/from16 v8, p1

    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v2

    .line 952
    :try_start_7
    invoke-virtual {v2, v8}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_18a

    if-eqz v0, :cond_1b

    .line 957
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_18a

    .line 960
    goto :goto_1b

    .line 958
    :catch_11
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 959
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_14
    const-string v3, "PduPersister"

    const-string v4, "updateHeaders: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 962
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1b
    :goto_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_18a

    .line 963
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v8}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 965
    new-instance v0, Landroid/content/ContentValues;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 966
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v9

    .line 967
    .local v9, "contentType":[B
    if-eqz v9, :cond_37

    .line 968
    const-string v2, "ct_t"

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    :cond_37
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v10

    .line 972
    .local v10, "date":J
    const-wide/16 v2, -0x1

    cmp-long v4, v10, v2

    if-eqz v4, :cond_4a

    .line 973
    const-string v4, "date"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 976
    :cond_4a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v12

    .line 977
    .local v12, "deliveryReport":I
    if-eqz v12, :cond_59

    .line 978
    const-string v4, "d_rpt"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 981
    :cond_59
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v13

    .line 982
    .local v13, "expiry":J
    cmp-long v2, v13, v2

    if-eqz v2, :cond_6a

    .line 983
    const-string v2, "exp"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 986
    :cond_6a
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v15

    .line 987
    .local v15, "msgClass":[B
    if-eqz v15, :cond_79

    .line 988
    const-string v2, "m_cls"

    invoke-static {v15}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :cond_79
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPriority()I

    move-result v16

    .line 992
    .local v16, "priority":I
    if-eqz v16, :cond_88

    .line 993
    const-string v2, "pri"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    :cond_88
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getReadReport()I

    move-result v17

    .line 997
    .local v17, "readReport":I
    if-eqz v17, :cond_97

    .line 998
    const-string v2, "rr"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    :cond_97
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v18

    .line 1002
    .local v18, "transId":[B
    if-eqz v18, :cond_a6

    .line 1003
    const-string v2, "tr_id"

    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    :cond_a6
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v19

    .line 1007
    .local v19, "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v19, :cond_c7

    .line 1008
    const-string v2, "sub"

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v2, "sub_cs"

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_ce

    .line 1011
    :cond_c7
    const-string v2, "sub"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :goto_ce
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v20

    .line 1015
    .local v20, "messageSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-lez v2, :cond_e1

    .line 1016
    const-string v2, "m_size"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1019
    :cond_e1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v7

    .line 1020
    .local v7, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v6, v2

    .line 1021
    .local v6, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v2, Lcom/google/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v3, v2

    const/4 v5, 0x0

    :goto_ef
    if-ge v5, v3, :cond_162

    aget v4, v2, v5

    .line 1022
    .local v4, "addrType":I
    const/16 v23, 0x0

    .line 1023
    .local v23, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    move-object/from16 v24, v2

    const/16 v2, 0x89

    if-ne v4, v2, :cond_114

    .line 1024
    invoke-virtual {v7, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 1025
    .local v2, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_10d

    .line 1026
    move/from16 v25, v3

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 1027
    .end local v23    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v3, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v22, 0x0

    aput-object v2, v3, v22

    move-object/from16 v23, v3

    goto :goto_111

    .line 1025
    .end local v3    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v23    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_10d
    move/from16 v25, v3

    const/16 v22, 0x0

    .line 1029
    .end local v2    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_111
    move-object/from16 v2, v23

    goto :goto_11e

    .line 1030
    :cond_114
    move/from16 v25, v3

    const/16 v22, 0x0

    invoke-virtual {v7, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v23

    move-object/from16 v2, v23

    .line 1033
    .end local v23    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v2, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_11e
    if-eqz v2, :cond_151

    .line 1034
    move-object/from16 v23, v7

    .end local v7    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .local v23, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1035
    .local v7, "msgId":J
    invoke-direct {v1, v7, v8, v4, v2}, Lcom/google/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1036
    const/16 v3, 0x97

    if-ne v4, v3, :cond_14c

    .line 1037
    array-length v3, v2

    move/from16 v26, v4

    move/from16 v4, v22

    .end local v4    # "addrType":I
    .local v26, "addrType":I
    :goto_132
    if-ge v4, v3, :cond_149

    aget-object v27, v2, v4

    .line 1038
    .local v27, "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v27, :cond_142

    .line 1039
    move-object/from16 v28, v2

    .end local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v28, "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_144

    .line 1038
    .end local v28    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_142
    move-object/from16 v28, v2

    .line 1037
    .end local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v27    # "v":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v28    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_144
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v28

    goto :goto_132

    .end local v28    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_149
    move-object/from16 v28, v2

    .end local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v28    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_157

    .line 1036
    .end local v26    # "addrType":I
    .end local v28    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "addrType":I
    :cond_14c
    move-object/from16 v28, v2

    move/from16 v26, v4

    .end local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "addrType":I
    .restart local v26    # "addrType":I
    .restart local v28    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_157

    .line 1033
    .end local v23    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .end local v26    # "addrType":I
    .end local v28    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "addrType":I
    .local v7, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_151
    move-object/from16 v28, v2

    move/from16 v26, v4

    move-object/from16 v23, v7

    .line 1021
    .end local v2    # "array":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "addrType":I
    .end local v7    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v23    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :goto_157
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v8, p1

    move-object/from16 v7, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    goto :goto_ef

    .line 1045
    .end local v23    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v7    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_162
    move-object/from16 v23, v7

    .end local v7    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    .restart local v23    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_179

    .line 1046
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v2

    .line 1047
    .local v2, "threadId":J
    const-string v4, "thread_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1050
    .end local v2    # "threadId":J
    :cond_179
    iget-object v2, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object v5, v0

    move-object/from16 v22, v6

    .end local v6    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v22, "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v6, v7

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1051
    return-void

    .line 962
    .end local v0    # "values":Landroid/content/ContentValues;
    .end local v9    # "contentType":[B
    .end local v10    # "date":J
    .end local v12    # "deliveryReport":I
    .end local v13    # "expiry":J
    .end local v15    # "msgClass":[B
    .end local v16    # "priority":I
    .end local v17    # "readReport":I
    .end local v18    # "transId":[B
    .end local v19    # "subject":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v20    # "messageSize":J
    .end local v22    # "recipients":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v23    # "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :catchall_18a
    move-exception v0

    :try_start_18b
    monitor-exit v2
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_18a

    throw v0
.end method

.method public greylist updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V
    .registers 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "body"    # Lcom/google/android/mms/pdu/PduBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .local p3, "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1120
    :try_start_8
    sget-object v6, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v6
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_129

    .line 1121
    :try_start_b
    invoke-virtual {v6, v2}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_126

    if-eqz v0, :cond_32

    .line 1126
    :try_start_11
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_126

    .line 1129
    goto :goto_1f

    .line 1127
    :catch_15
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 1128
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_18
    const-string v7, "PduPersister"

    const-string v8, "updateParts: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1130
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1f
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, v2}, Lcom/google/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    .line 1131
    .local v0, "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    if-eqz v0, :cond_32

    .line 1132
    invoke-virtual {v0}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v7, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1137
    .end local v0    # "cacheEntry":Lcom/google/android/mms/util/PduCacheEntry;
    :cond_32
    sget-object v0, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    const/4 v7, 0x1

    invoke-virtual {v0, v2, v7}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1138
    monitor-exit v6
    :try_end_39
    .catchall {:try_start_18 .. :try_end_39} :catchall_126

    .line 1140
    :try_start_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v0, "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1143
    .local v6, "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    .line 1144
    .local v8, "partsNum":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x28

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1145
    .local v9, "filter":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_53
    if-ge v10, v8, :cond_9c

    .line 1146
    invoke-virtual {v3, v10}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v11

    .line 1147
    .local v11, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    .line 1148
    .local v12, "partUri":Landroid/net/Uri;
    if-eqz v12, :cond_96

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_96

    .line 1149
    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    const-string v14, "mms"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_76

    goto :goto_96

    .line 1152
    :cond_76
    invoke-virtual {v6, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-le v13, v7, :cond_84

    .line 1157
    const-string v13, " AND "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1160
    :cond_84
    const-string v13, "_id"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    const-string v13, "!="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_99

    .line 1150
    :cond_96
    :goto_96
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    .end local v11    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v12    # "partUri":Landroid/net/Uri;
    :goto_99
    add-int/lit8 v10, v10, 0x1

    goto :goto_53

    .line 1165
    .end local v10    # "i":I
    :cond_9c
    const/16 v7, 0x29

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1167
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 1170
    .local v10, "msgId":J
    iget-object v7, v1, Lcom/google/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/google/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/part"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1171
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x2

    const/4 v5, 0x0

    if-le v14, v15, :cond_d9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_da

    :cond_d9
    move-object v14, v5

    .line 1170
    :goto_da
    invoke-static {v7, v12, v13, v14, v5}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1175
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/mms/pdu/PduPart;

    .line 1176
    .local v7, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1, v7, v10, v11, v4}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    .line 1177
    nop

    .end local v7    # "part":Lcom/google/android/mms/pdu/PduPart;
    goto :goto_e1

    .line 1180
    :cond_f2
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fa
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_116

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1181
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v1, v12, v13, v4}, Lcom/google/android/mms/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;Ljava/util/HashMap;)V
    :try_end_115
    .catchall {:try_start_39 .. :try_end_115} :catchall_129

    .line 1182
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    goto :goto_fa

    .line 1184
    .end local v0    # "toBeCreated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v6    # "toBeUpdated":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPart;>;"
    .end local v8    # "partsNum":I
    .end local v9    # "filter":Ljava/lang/StringBuilder;
    .end local v10    # "msgId":J
    :cond_116
    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1185
    const/4 v6, 0x0

    :try_start_11a
    invoke-virtual {v5, v2, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1186
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1187
    monitor-exit v5

    .line 1188
    nop

    .line 1189
    return-void

    .line 1187
    :catchall_123
    move-exception v0

    monitor-exit v5
    :try_end_125
    .catchall {:try_start_11a .. :try_end_125} :catchall_123

    throw v0

    .line 1138
    :catchall_126
    move-exception v0

    :try_start_127
    monitor-exit v6
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_126

    .end local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local p3    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :try_start_128
    throw v0
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_129

    .line 1184
    .restart local p0    # "this":Lcom/google/android/mms/pdu/PduPersister;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local p3    # "preOpenedFiles":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :catchall_129
    move-exception v0

    sget-object v5, Lcom/google/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google/android/mms/util/PduCache;

    monitor-enter v5

    .line 1185
    const/4 v6, 0x0

    :try_start_12e
    invoke-virtual {v5, v2, v6}, Lcom/google/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    .line 1186
    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 1187
    monitor-exit v5
    :try_end_135
    .catchall {:try_start_12e .. :try_end_135} :catchall_136

    .line 1188
    throw v0

    .line 1187
    :catchall_136
    move-exception v0

    :try_start_137
    monitor-exit v5
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    throw v0
.end method
