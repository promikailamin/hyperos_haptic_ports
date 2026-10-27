.class public final Landroid/accounts/AccountManagerImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "AccountManagerImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/accounts/AccountManagerImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/accounts/AccountManagerImpl;

    invoke-direct {v0}, Landroid/accounts/AccountManagerImpl;-><init>()V

    sput-object v0, Landroid/accounts/AccountManagerImpl$Provider$SINGLETON;->INSTANCE:Landroid/accounts/AccountManagerImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
