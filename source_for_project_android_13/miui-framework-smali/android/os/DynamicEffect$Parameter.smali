.class public Landroid/os/DynamicEffect$Parameter;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DynamicEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field public mCurve:Landroid/os/DynamicEffect$Curve;


# direct methods
.method public constructor <init>(Landroid/os/DynamicEffect$Curve;)V
    .registers 2
    .param p1, "curve"    # Landroid/os/DynamicEffect$Curve;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/os/DynamicEffect$Parameter;->mCurve:Landroid/os/DynamicEffect$Curve;

    .line 163
    return-void
.end method
