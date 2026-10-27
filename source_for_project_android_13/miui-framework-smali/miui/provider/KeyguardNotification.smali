.class public Lmiui/provider/KeyguardNotification;
.super Ljava/lang/Object;
.source "KeyguardNotification.java"


# static fields
.field public static final blacklist AUTHORITY:Ljava/lang/String; = "keyguard.notification"

.field public static final blacklist BASE_URI_STRING:Ljava/lang/String; = "content://keyguard.notification"

.field public static final blacklist CONTENT:Ljava/lang/String; = "content"

.field public static final blacklist CONTENT_INDEX:I = 0x3

.field public static final blacklist ICON:Ljava/lang/String; = "icon"

.field public static final blacklist ICON_INDEX:I = 0x1

.field public static final blacklist ID:Ljava/lang/String; = "_id"

.field public static final blacklist ID_INDEX:I = 0x0

.field public static final blacklist INFO:Ljava/lang/String; = "info"

.field public static final blacklist INFO_INDEX:I = 0x5

.field public static final blacklist KEY:Ljava/lang/String; = "key"

.field public static final blacklist KEY_INDEX:I = 0x7

.field public static final blacklist PKG:Ljava/lang/String; = "pkg"

.field public static final blacklist PKG_INDEX:I = 0x8

.field public static final blacklist PROJECTION:[Ljava/lang/String;

.field public static final blacklist SUBTEXT:Ljava/lang/String; = "subtext"

.field public static final blacklist SUBTEXT_INDEX:I = 0x6

.field public static final blacklist TABLE:Ljava/lang/String; = "notifications"

.field public static final blacklist TIME:Ljava/lang/String; = "time"

.field public static final blacklist TIME_INDEX:I = 0x4

.field public static final blacklist TITLE:Ljava/lang/String; = "title"

.field public static final blacklist TITLE_INDEX:I = 0x2

.field public static final blacklist URI:Landroid/net/Uri;

.field public static final blacklist USERID:Ljava/lang/String; = "user_id"

.field public static final blacklist USERID_INDEX:I = 0x9


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 15
    const-string v0, "content://keyguard.notification/notifications"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/KeyguardNotification;->URI:Landroid/net/Uri;

    .line 38
    const-string v1, "_id"

    const-string v2, "icon"

    const-string v3, "title"

    const-string v4, "content"

    const-string v5, "time"

    const-string v6, "info"

    const-string v7, "subtext"

    const-string v8, "key"

    const-string v9, "pkg"

    const-string v10, "user_id"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/KeyguardNotification;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
