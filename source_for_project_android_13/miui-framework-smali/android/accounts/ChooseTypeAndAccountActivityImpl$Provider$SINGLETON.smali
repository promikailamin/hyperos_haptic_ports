.class public final Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivityImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/accounts/ChooseTypeAndAccountActivityImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/accounts/ChooseTypeAndAccountActivityImpl;

    invoke-direct {v0}, Landroid/accounts/ChooseTypeAndAccountActivityImpl;-><init>()V

    sput-object v0, Landroid/accounts/ChooseTypeAndAccountActivityImpl$Provider$SINGLETON;->INSTANCE:Landroid/accounts/ChooseTypeAndAccountActivityImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
