.class public final Lmiui/provider/ExtraTelephony$MmsSms;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation


# static fields
.field public static final blacklist BLOCKED_CONVERSATION_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist BLOCKED_THREAD_CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_ALL_LOCKED_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_ALL_UNDERSTAND_INFO_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_EXPIRED_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_PREVIEW_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_RECENT_RECIPIENTS_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_UNDERSTAND_INFO_URI:Landroid/net/Uri;

.field public static final blacklist EXCLUDE_VERIFICATION_CODES_FLAG:Ljava/lang/String; = "exclude_verification_codes"

.field public static final blacklist EXCLUDE_VERIFICATION_CODES_FLAG_EXCLUDE:Ljava/lang/String; = "1"

.field public static final blacklist EXCLUDE_VERIFICATION_CODES_FLAG_NOT_EXCLUDE:Ljava/lang/String; = "0"

.field public static final blacklist INSERT_PATH_IGNORED:Ljava/lang/String; = "ignored"

.field public static final blacklist INSERT_PATH_INSERTED:Ljava/lang/String; = "inserted"

.field public static final blacklist INSERT_PATH_RESTORED:Ljava/lang/String; = "restored"

.field public static final blacklist INSERT_PATH_UPDATED:Ljava/lang/String; = "updated"

.field public static final blacklist PREVIEW_ADDRESS_COLUMN_INDEX:I = 0x1

.field public static final blacklist PREVIEW_BODY_COLUMN_INDEX:I = 0x4

.field public static final blacklist PREVIEW_CHARSET_COLUMN_INDEX:I = 0x5

.field public static final blacklist PREVIEW_DATE_COLUMN_INDEX:I = 0x2

.field public static final blacklist PREVIEW_ID_COLUMN_INDEX:I = 0x0

.field public static final blacklist PREVIEW_THREAD_ID_COLUMN_INDEX:I = 0x6

.field public static final blacklist PREVIEW_TYPE_COLUMN_INDEX:I = 0x3

.field public static final blacklist SYNC_STATE_DIRTY:I = 0x0

.field public static final blacklist SYNC_STATE_ERROR:I = 0x3

.field public static final blacklist SYNC_STATE_MARKED_DELETING:I = 0x10002

.field public static final blacklist SYNC_STATE_NOT_UPLOADABLE:I = 0x4

.field public static final blacklist SYNC_STATE_SYNCED:I = 0x2

.field public static final blacklist SYNC_STATE_SYNCING:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 928
    const-string v0, "content://mms-sms/message/preview"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_PREVIEW_URI:Landroid/net/Uri;

    .line 934
    const-string v0, "content://mms-sms/locked/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_ALL_LOCKED_URI:Landroid/net/Uri;

    .line 937
    const-string v0, "content://mms-sms/expired"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_EXPIRED_URI:Landroid/net/Uri;

    .line 940
    const-string v0, "content://mms-sms/recent-recipients"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_RECENT_RECIPIENTS_URI:Landroid/net/Uri;

    .line 943
    const-string v0, "content://mms-sms/understand-info"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_UNDERSTAND_INFO_URI:Landroid/net/Uri;

    .line 949
    const-string v0, "content://mms-sms/understand-info/all"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_ALL_UNDERSTAND_INFO_URI:Landroid/net/Uri;

    .line 955
    const-string v0, "content://mms-sms/blocked"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->BLOCKED_CONVERSATION_CONTENT_URI:Landroid/net/Uri;

    .line 960
    const-string v0, "content://mms-sms/blocked-thread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->BLOCKED_THREAD_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
