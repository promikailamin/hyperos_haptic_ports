.class public final Landroid/view/ScreenOptimizeObserverProxyImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "ScreenOptimizeObserverProxyImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScreenOptimizeObserverProxyImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/view/ScreenOptimizeObserverProxyImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/view/ScreenOptimizeObserverProxyImpl;

    invoke-direct {v0}, Landroid/view/ScreenOptimizeObserverProxyImpl;-><init>()V

    sput-object v0, Landroid/view/ScreenOptimizeObserverProxyImpl$Provider$SINGLETON;->INSTANCE:Landroid/view/ScreenOptimizeObserverProxyImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
