.class public final Lmiui/provider/ExtraTelephony$Whitelist;
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
    name = "Whitelist"
.end annotation


# static fields
.field public static final blacklist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/firewall-whitelist"

.field public static final blacklist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/firewall-whitelist"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist DISPLAY_NUMBER:Ljava/lang/String; = "display_number"

.field public static final blacklist ISDISPLAY:Ljava/lang/String; = "isdisplay"

.field public static final blacklist NOTES:Ljava/lang/String; = "notes"

.field public static final blacklist NUMBER:Ljava/lang/String; = "number"

.field public static final blacklist STATE:Ljava/lang/String; = "state"

.field public static final blacklist VIP:Ljava/lang/String; = "vip"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2154
    const-string v0, "content://firewall/whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Whitelist;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 2153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
