.class public Landroid/os/CombinedVibrationStubImpl;
.super Ljava/lang/Object;
.source "CombinedVibrationStubImpl.java"

# interfaces
.implements Landroid/os/CombinedVibrationStub;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist createDynamicEffect([III)Ljava/lang/Object;
    .registers 5
    .param p1, "buffer"    # [I
    .param p2, "loop"    # I
    .param p3, "interval"    # I

    .line 9
    new-instance v0, Landroid/os/DynamicEffect;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/DynamicEffect;-><init>([III)V

    return-object v0
.end method
