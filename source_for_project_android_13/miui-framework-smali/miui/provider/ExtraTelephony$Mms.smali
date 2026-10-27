.class public final Lmiui/provider/ExtraTelephony$Mms;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$DeletableSyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$Mms$PreviewType;,
        Lmiui/provider/ExtraTelephony$Mms$Intents;
    }
.end annotation


# static fields
.field public static final blacklist ACCOUNT:Ljava/lang/String; = "account"

.field public static final blacklist ADDRESSES:Ljava/lang/String; = "addresses"

.field public static final blacklist ADVANCED_SEEN:Ljava/lang/String; = "advanced_seen"

.field public static final blacklist BIND_ID:Ljava/lang/String; = "bind_id"

.field public static final blacklist BLOCK_TYPE:Ljava/lang/String; = "block_type"

.field public static final blacklist DATE_FULL:Ljava/lang/String; = "date_full"

.field public static final blacklist DATE_MS_PART:Ljava/lang/String; = "date_ms_part"

.field public static final blacklist ERROR_TYPE:Ljava/lang/String; = "error_type"

.field public static final blacklist FAVORITE_DATE:Ljava/lang/String; = "favorite_date"

.field public static final blacklist FILE_ID:Ljava/lang/String; = "file_id"

.field public static final blacklist MX_EXTENSION:Ljava/lang/String; = "mx_extension"

.field public static final blacklist MX_ID:Ljava/lang/String; = "mx_id"

.field public static final blacklist MX_STATUS:Ljava/lang/String; = "mx_status"

.field public static final blacklist MX_TYPE:Ljava/lang/String; = "mx_type"

.field public static final blacklist NEED_DOWNLOAD:Ljava/lang/String; = "need_download"

.field public static final blacklist OUT_TIME:Ljava/lang/String; = "out_time"

.field public static final blacklist PREVIEW_DATA:Ljava/lang/String; = "preview_data"

.field public static final blacklist PREVIEW_DATA_TS:Ljava/lang/String; = "preview_data_ts"

.field public static final blacklist PREVIEW_TYPE:Ljava/lang/String; = "preview_type"

.field public static final blacklist SIM_ID:Ljava/lang/String; = "sim_id"

.field public static final blacklist SNIPPET:Ljava/lang/String; = "snippet"

.field public static final blacklist TIMED:Ljava/lang/String; = "timed"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
