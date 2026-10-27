.class public final Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider$SINGLETON;
.super Ljava/lang/Object;
.source "OverScrollerSplineOverScrollerStubImpl$Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SINGLETON"
.end annotation


# static fields
.field public static final blacklist INSTANCE:Landroid/widget/OverScrollerSplineOverScrollerStubImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;

    invoke-direct {v0}, Landroid/widget/OverScrollerSplineOverScrollerStubImpl;-><init>()V

    sput-object v0, Landroid/widget/OverScrollerSplineOverScrollerStubImpl$Provider$SINGLETON;->INSTANCE:Landroid/widget/OverScrollerSplineOverScrollerStubImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
