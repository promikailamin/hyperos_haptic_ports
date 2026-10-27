.class public Lmiui/os/DynamicEffect$Parameter;
.super Ljava/lang/Object;
.source "DynamicEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/os/DynamicEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameter"
.end annotation


# instance fields
.field private blacklist mParameter:Landroid/os/DynamicEffect$Parameter;


# direct methods
.method public constructor whitelist <init>(Landroid/os/DynamicEffect$Parameter;)V
    .registers 2
    .param p1, "param"    # Landroid/os/DynamicEffect$Parameter;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lmiui/os/DynamicEffect$Parameter;->mParameter:Landroid/os/DynamicEffect$Parameter;

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist get()Landroid/os/DynamicEffect$Parameter;
    .registers 2

    .line 32
    iget-object v0, p0, Lmiui/os/DynamicEffect$Parameter;->mParameter:Landroid/os/DynamicEffect$Parameter;

    return-object v0
.end method
