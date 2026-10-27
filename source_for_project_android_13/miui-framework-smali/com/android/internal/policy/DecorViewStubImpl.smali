.class public Lcom/android/internal/policy/DecorViewStubImpl;
.super Ljava/lang/Object;
.source "DecorViewStubImpl.java"

# interfaces
.implements Lcom/android/internal/policy/DecorViewStub;


# static fields
.field private static final blacklist EXECUTE_VOLUME_KEY_MAX_TIME_VALUE:J = 0x5L

.field private static final blacklist TAG:Ljava/lang/String; = "DecorViewStubImpl"


# instance fields
.field private blacklist mActionModeMethod:Ljava/lang/reflect/Method;

.field private blacklist mExecuteVolumeKeyBeginTime:J

.field private blacklist mFloatingActionModeHelperConstructor:Ljava/lang/reflect/Constructor;

.field private blacklist mToolbarHelperClass:Ljava/lang/Class;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist afterDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 70
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_10

    .line 71
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5b

    .line 72
    :cond_10
    iget-wide v0, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mExecuteVolumeKeyBeginTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5b

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mExecuteVolumeKeyBeginTime:J

    sub-long/2addr v0, v4

    .line 74
    .local v0, "executeTime":J
    const-wide/16 v4, 0x5

    cmp-long v4, v0, v4

    if-lez v4, :cond_59

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute event keycode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 76
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spend time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    const-string v5, "DecorViewStubImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_59
    iput-wide v2, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mExecuteVolumeKeyBeginTime:J

    .line 81
    .end local v0    # "executeTime":J
    :cond_5b
    return-void
.end method

.method public blacklist beforeDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 59
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_10

    .line 60
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_23

    .line 61
    :cond_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 63
    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mExecuteVolumeKeyBeginTime:J

    .line 66
    :cond_23
    return-void
.end method

.method public blacklist createActionMode(ILandroid/view/ActionMode$Callback;Landroid/view/View;)Landroid/view/ActionMode;
    .registers 13
    .param p1, "type"    # I
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "child"    # Landroid/view/View;

    .line 29
    const/4 v0, 0x1

    if-ne p1, v0, :cond_76

    instance-of v1, p2, Landroid/view/ActionMode$Callback2;

    if-eqz v1, :cond_76

    .line 32
    :try_start_7
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.miuix.editor"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 34
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mToolbarHelperClass:Ljava/lang/Class;

    if-nez v2, :cond_22

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "miuix.toolbar.FloatingActionModeHelper"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mToolbarHelperClass:Ljava/lang/Class;

    .line 37
    :cond_22
    iget-object v2, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mFloatingActionModeHelperConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x0

    if-nez v2, :cond_35

    .line 38
    iget-object v2, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mToolbarHelperClass:Ljava/lang/Class;

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mFloatingActionModeHelperConstructor:Ljava/lang/reflect/Constructor;

    .line 40
    :cond_35
    iget-object v2, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mFloatingActionModeHelperConstructor:Ljava/lang/reflect/Constructor;

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "floatingActionModeHelper":Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mActionModeMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    if-nez v4, :cond_58

    .line 42
    iget-object v4, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mToolbarHelperClass:Ljava/lang/Class;

    const-string v6, "startActionMode"

    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Landroid/view/View;

    aput-object v8, v7, v3

    const-class v8, Landroid/view/ActionMode$Callback2;

    aput-object v8, v7, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mActionModeMethod:Ljava/lang/reflect/Method;

    .line 45
    :cond_58
    iget-object v4, p0, Lcom/android/internal/policy/DecorViewStubImpl;->mActionModeMethod:Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v3

    move-object v3, p2

    check-cast v3, Landroid/view/ActionMode$Callback2;

    aput-object v3, v5, v0

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 47
    .local v0, "actionMode":Ljava/lang/Object;
    if-eqz v0, :cond_6d

    .line 48
    move-object v3, v0

    check-cast v3, Landroid/view/ActionMode;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_6c} :catch_6e

    return-object v3

    .line 52
    .end local v0    # "actionMode":Ljava/lang/Object;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "floatingActionModeHelper":Ljava/lang/Object;
    :cond_6d
    goto :goto_76

    .line 50
    :catch_6e
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DecorViewStubImpl"

    const-string v2, "try catch editor reflect exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_76
    :goto_76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist interceptDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 85
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_10

    .line 86
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_40

    .line 87
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The event keycode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been intercepted by the app, and the volume panel won\'t show up"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "DecorViewStubImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_40
    return-void
.end method

.method public blacklist isShowView(ZLjava/lang/String;)Z
    .registers 4
    .param p1, "isInSplitScreen"    # Z
    .param p2, "transitionName"    # Ljava/lang/String;

    .line 95
    if-eqz p1, :cond_c

    const-string v0, "android:navigation:background"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
