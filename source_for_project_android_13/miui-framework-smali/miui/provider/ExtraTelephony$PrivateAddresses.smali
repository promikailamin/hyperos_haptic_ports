.class public interface abstract Lmiui/provider/ExtraTelephony$PrivateAddresses;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$DeletableSyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PrivateAddresses"
.end annotation


# static fields
.field public static final blacklist ADDRESS:Ljava/lang/String; = "address"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist _ID:Ljava/lang/String; = "_id"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 851
    const-string v0, "content://mms-sms/private-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$PrivateAddresses;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
