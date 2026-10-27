.class public Lmiui/stepcounter/StepSqlite;
.super Ljava/lang/Object;
.source "StepSqlite.java"


# static fields
.field public static final blacklist AUTHORITY:Ljava/lang/String; = "com.miui.providers.steps"

.field public static final blacklist BEGIN_TIME:Ljava/lang/String; = "_begin_time"

.field public static final blacklist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.miui.steps"

.field public static final blacklist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.miui.steps"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist DEFAULT_PROJECTION:[Ljava/lang/String;

.field public static final blacklist DEFAULT_SORT_ORDER:Ljava/lang/String; = "_id asc"

.field public static final blacklist END_TIME:Ljava/lang/String; = "_end_time"

.field public static final blacklist ID:Ljava/lang/String; = "_id"

.field public static final blacklist ITEM:I = 0x1

.field public static final blacklist ITEM_ID:I = 0x2

.field public static final blacklist ITEM_LATEST:I = 0x4

.field public static final blacklist ITEM_POS:I = 0x3

.field public static final blacklist KEY_ITEM_COUNT:Ljava/lang/String; = "KEY_ITEM_COUNT"

.field public static final blacklist METHOD_GET_ITEM_COUNT:Ljava/lang/String; = "METHOD_GET_ITEM_COUNT"

.field public static final blacklist MODE:Ljava/lang/String; = "_mode"

.field public static final blacklist STEPS:Ljava/lang/String; = "_steps"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 36
    const-string v0, "content://com.miui.providers.steps/item"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/stepcounter/StepSqlite;->CONTENT_URI:Landroid/net/Uri;

    .line 38
    const-string v0, "_id"

    const-string v1, "_begin_time"

    const-string v2, "_end_time"

    const-string v3, "_mode"

    const-string v4, "_steps"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/stepcounter/StepSqlite;->DEFAULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
