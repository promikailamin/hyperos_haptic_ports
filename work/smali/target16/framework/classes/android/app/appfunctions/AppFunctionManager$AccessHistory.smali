.class public final Landroid/app/appfunctions/AppFunctionManager$AccessHistory;
.super Ljava/lang/Object;
.source "AppFunctionManager.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/AppFunctionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccessHistory"
.end annotation


# static fields
.field public static final blacklist COLUMN_ACCESS_TIME:Ljava/lang/String; = "access_time"

.field public static final blacklist COLUMN_AGENT_PACKAGE_NAME:Ljava/lang/String; = "agent_package_name"

.field public static final blacklist COLUMN_CUSTOM_INTERACTION_TYPE:Ljava/lang/String; = "custom_interaction_type"

.field public static final blacklist COLUMN_DURATION:Ljava/lang/String; = "access_duration"

.field public static final blacklist COLUMN_INTERACTION_TYPE:Ljava/lang/String; = "interaction_type"

.field public static final blacklist COLUMN_INTERACTION_URI:Ljava/lang/String; = "interaction_uri"

.field public static final blacklist COLUMN_TARGET_PACKAGE_NAME:Ljava/lang/String; = "target_package_name"

.field public static final blacklist COLUMN_THREAD_ID:Ljava/lang/String; = "thread_id"

.field private static final blacklist TARGET_USER_URI:Landroid/net/Uri;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTARGET_USER_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Landroid/app/appfunctions/AppFunctionManager$AccessHistory;->TARGET_USER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 127
    nop

    .line 128
    const-string v0, "content://com.android.appfunction.accesshistory/user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/app/appfunctions/AppFunctionManager$AccessHistory;->TARGET_USER_URI:Landroid/net/Uri;

    .line 127
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
