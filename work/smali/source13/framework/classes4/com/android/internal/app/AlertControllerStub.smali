.class public interface abstract Lcom/android/internal/app/AlertControllerStub;
.super Ljava/lang/Object;
.source "AlertControllerStub.java"


# static fields
.field public static final blacklist sInstance:Lcom/android/internal/app/AlertControllerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const-class v0, Lcom/android/internal/app/AlertControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/AlertControllerStub;

    sput-object v0, Lcom/android/internal/app/AlertControllerStub;->sInstance:Lcom/android/internal/app/AlertControllerStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/app/AlertControllerStub;
    .registers 1

    .line 17
    sget-object v0, Lcom/android/internal/app/AlertControllerStub;->sInstance:Lcom/android/internal/app/AlertControllerStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist performButtonHaptic(Landroid/view/View;)V
.end method

.method public abstract blacklist positiveClick()V
.end method
