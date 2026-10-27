.class public final Lmiui/provider/ExtraTelephony$Phonelist;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phonelist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$Phonelist$State;,
        Lmiui/provider/ExtraTelephony$Phonelist$Location;,
        Lmiui/provider/ExtraTelephony$Phonelist$SyncDirty;
    }
.end annotation


# static fields
.field public static final blacklist CLOUD_UUID:Ljava/lang/String; = "cloudUid"

.field public static final blacklist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/antispam-phone_list"

.field public static final blacklist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/antispam-phone_list"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI_SYNCED_COUNT:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI_UNSYNCED_COUNT:Landroid/net/Uri;

.field public static final blacklist DISPLAY_NUMBER:Ljava/lang/String; = "display_number"

.field public static final blacklist E_TAG:Ljava/lang/String; = "e_tag"

.field public static final blacklist IS_DISPLAY:Ljava/lang/String; = "isdisplay"

.field public static final blacklist LOCATION:Ljava/lang/String; = "location"

.field public static final blacklist NOTES:Ljava/lang/String; = "notes"

.field public static final blacklist NUMBER:Ljava/lang/String; = "number"

.field public static final blacklist RECORD_ID:Ljava/lang/String; = "record_id"

.field public static final blacklist SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final blacklist STATE:Ljava/lang/String; = "state"

.field public static final blacklist SYNC_DIRTY:Ljava/lang/String; = "sync_dirty"

.field public static final blacklist TYPE:Ljava/lang/String; = "type"

.field public static final blacklist TYPE_BLACK:Ljava/lang/String; = "1"

.field public static final blacklist TYPE_CLOUDS_BLACK:Ljava/lang/String; = "4"

.field public static final blacklist TYPE_CLOUDS_WHITE:Ljava/lang/String; = "5"

.field public static final blacklist TYPE_STRONG_CLOUDS_BLACK:Ljava/lang/String; = "6"

.field public static final blacklist TYPE_STRONG_CLOUDS_WHITE:Ljava/lang/String; = "7"

.field public static final blacklist TYPE_VIP:Ljava/lang/String; = "3"

.field public static final blacklist TYPE_WHITE:Ljava/lang/String; = "2"

.field public static final blacklist UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2171
    const-string v0, "content://antispam/phone_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 2172
    const-string v0, "content://antispam/unsynced_count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI_UNSYNCED_COUNT:Landroid/net/Uri;

    .line 2173
    const-string v0, "content://antispam/synced_count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI_SYNCED_COUNT:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
