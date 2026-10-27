.class public final Landroid/view/InsetsControllerImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "InsetsControllerImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InsetsControllerImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/view/InsetsControllerImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/view/InsetsControllerImpl;

    invoke-direct {v0}, Landroid/view/InsetsControllerImpl;-><init>()V

    sput-object v0, Landroid/view/InsetsControllerImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/InsetsControllerImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
