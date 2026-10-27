.class public final Lmiui/provider/ExtraTelephony$Blacklist;
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
    name = "Blacklist"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/firewall-blacklist"

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/firewall-blacklist"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DISPLAY_NUMBER:Ljava/lang/String; = "display_number"

.field public static final whitelist NOTES:Ljava/lang/String; = "notes"

.field public static final whitelist NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist STATE:Ljava/lang/String; = "state"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2139
    const-string v0, "content://firewall/blacklist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$Blacklist;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 2138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
