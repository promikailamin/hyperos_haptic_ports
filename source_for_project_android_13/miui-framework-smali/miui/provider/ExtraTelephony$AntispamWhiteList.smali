.class interface abstract Lmiui/provider/ExtraTelephony$AntispamWhiteList;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AntispamWhiteList"
.end annotation


# static fields
.field public static final blacklist AUTHORITY:Ljava/lang/String; = "miui.yellowpage"

.field public static final blacklist BASE_URI_STRING:Ljava/lang/String; = "content://miui.yellowpage/"

.field public static final blacklist CONTNET_URI:Landroid/net/Uri;

.field public static final blacklist DIRECTORY:Ljava/lang/String; = "antispam_white_list"

.field public static final blacklist NUMBER:Ljava/lang/String; = "number"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1569
    const-string v0, "content://miui.yellowpage/antispam_white_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    return-void
.end method
