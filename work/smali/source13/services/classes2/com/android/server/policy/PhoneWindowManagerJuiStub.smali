.class public interface abstract Lcom/android/server/policy/PhoneWindowManagerJuiStub;
.super Ljava/lang/Object;
.source "PhoneWindowManagerJuiStub.java"


# static fields
.field public static final ACTION_INJECTED:I = 0x2

.field public static final ACTION_NOTHING:I = 0x0

.field public static final ACTION_PASS_TO_USER:I = 0x1


# direct methods
.method public static getInstance()Lcom/android/server/policy/PhoneWindowManagerJuiStub;
    .registers 1

    .line 24
    const-class v0, Lcom/android/server/policy/PhoneWindowManagerJuiStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManagerJuiStub;

    return-object v0
.end method


# virtual methods
.method public abstract init(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/wm/DisplayPolicy;Landroid/content/Context;Landroid/os/Handler;)V
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;Z)I
.end method
