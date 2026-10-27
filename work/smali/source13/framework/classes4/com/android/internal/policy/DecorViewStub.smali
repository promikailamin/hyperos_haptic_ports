.class public interface abstract Lcom/android/internal/policy/DecorViewStub;
.super Ljava/lang/Object;
.source "DecorViewStub.java"


# static fields
.field public static final blacklist sInstance:Lcom/android/internal/policy/DecorViewStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/android/internal/policy/DecorViewStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DecorViewStub;

    sput-object v0, Lcom/android/internal/policy/DecorViewStub;->sInstance:Lcom/android/internal/policy/DecorViewStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/policy/DecorViewStub;
    .registers 1

    .line 13
    sget-object v0, Lcom/android/internal/policy/DecorViewStub;->sInstance:Lcom/android/internal/policy/DecorViewStub;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist afterDispatchKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract blacklist beforeDispatchKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract blacklist createActionMode(ILandroid/view/ActionMode$Callback;Landroid/view/View;)Landroid/view/ActionMode;
.end method

.method public abstract blacklist interceptDispatchKeyEvent(Landroid/view/KeyEvent;)V
.end method

.method public abstract blacklist isShowView(ZLjava/lang/String;)Z
.end method
