.class public Landroid/app/NativeActivity;
.super Landroid/app/Activity;
.source "NativeActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Landroid/view/InputQueue$Callback;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NativeActivity$NativeContentView;
    }
.end annotation


# static fields
.field private static final greylist-max-o KEY_NATIVE_SAVED_STATE:Ljava/lang/String; = "android:native_state"

.field public static final whitelist META_DATA_FUNC_NAME:Ljava/lang/String; = "android.app.func_name"

.field public static final whitelist META_DATA_LIB_NAME:Ljava/lang/String; = "android.app.lib_name"


# instance fields
.field private greylist-max-o mCurInputQueue:Landroid/view/InputQueue;

.field private greylist-max-o mCurSurfaceHolder:Landroid/view/SurfaceHolder;

.field private greylist-max-o mDestroyed:Z

.field private greylist-max-o mDispatchingUnhandledKey:Z

.field private greylist-max-o mIMM:Landroid/view/inputmethod/InputMethodManager;

.field greylist-max-o mLastContentHeight:I

.field greylist-max-o mLastContentWidth:I

.field greylist-max-o mLastContentX:I

.field greylist-max-o mLastContentY:I

.field final greylist-max-o mLocation:[I

.field private greylist-max-o mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

.field private greylist-max-r mNativeHandle:J


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/app/NativeActivity;->mLocation:[I

    return-void
.end method

.method private static greylist-max-o getAbsolutePath(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 184
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method private native greylist-max-o getDlError()Ljava/lang/String;
.end method

.method private native greylist-max-r loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J
.end method

.method private native greylist-max-o onConfigurationChangedNative(J)V
.end method

.method private native greylist-max-o onContentRectChangedNative(JIIII)V
.end method

.method private native greylist-max-o onInputQueueCreatedNative(JJ)V
.end method

.method private native greylist-max-o onInputQueueDestroyedNative(JJ)V
.end method

.method private native greylist-max-o onLowMemoryNative(J)V
.end method

.method private native greylist-max-o onPauseNative(J)V
.end method

.method private native greylist-max-o onResumeNative(J)V
.end method

.method private native greylist-max-o onSaveInstanceStateNative(J)[B
.end method

.method private native greylist-max-o onStartNative(J)V
.end method

.method private native greylist-max-o onStopNative(J)V
.end method

.method private native greylist-max-o onSurfaceChangedNative(JLandroid/view/Surface;III)V
.end method

.method private native greylist-max-o onSurfaceCreatedNative(JLandroid/view/Surface;)V
.end method

.method private native greylist-max-o onSurfaceDestroyedNative(J)V
.end method

.method private native greylist-max-o onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V
.end method

.method private native greylist-max-o onWindowFocusChangedNative(JZ)V
.end method

.method private native greylist-max-o unloadNativeCode(J)V
.end method


# virtual methods
.method greylist-max-r hideIme(I)V
    .registers 4

    .line 335
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 336
    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    iget-boolean p1, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez p1, :cond_c

    .line 239
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onConfigurationChangedNative(J)V

    .line 241
    :cond_c
    return-void
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 14

    .line 127
    nop

    .line 128
    nop

    .line 131
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, v1}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 133
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/Window;->takeInputQueue(Landroid/view/InputQueue$Callback;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setFormat(I)V

    .line 136
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 140
    new-instance v1, Landroid/app/NativeActivity$NativeContentView;

    invoke-direct {v1, p0}, Landroid/app/NativeActivity$NativeContentView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    .line 141
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iput-object p0, v1, Landroid/app/NativeActivity$NativeContentView;->mActivity:Landroid/app/NativeActivity;

    .line 142
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {p0, v1}, Landroid/app/NativeActivity;->setContentView(Landroid/view/View;)V

    .line 143
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->requestFocus()Z

    .line 144
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 147
    :try_start_49
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 147
    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 149
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_5d} :catch_124

    const-string/jumbo v3, "main"

    const-string v4, "ANativeActivity_onCreate"

    if-eqz v2, :cond_7d

    .line 150
    :try_start_64
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.app.lib_name"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    if-eqz v2, :cond_6f

    move-object v3, v2

    .line 152
    :cond_6f
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.app.func_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_77} :catch_124

    .line 153
    if-eqz v1, :cond_7b

    move-object v2, v1

    goto :goto_7e

    :cond_7b
    move-object v2, v4

    goto :goto_7e

    .line 149
    :cond_7d
    move-object v2, v4

    .line 157
    :goto_7e
    nop

    .line 159
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ldalvik/system/BaseDexClassLoader;

    .line 160
    invoke-virtual {v10, v3}, Ldalvik/system/BaseDexClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_fd

    .line 167
    const/4 v3, 0x0

    if-eqz p1, :cond_97

    .line 168
    const-string v4, "android:native_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    move-object v9, v4

    goto :goto_98

    :cond_97
    move-object v9, v3

    .line 170
    :goto_98
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v4

    .line 171
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/NativeActivity;->getObbDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-virtual {p0, v3}, Landroid/app/NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/app/NativeActivity;->getAbsolutePath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 173
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    .line 174
    invoke-virtual {v10}, Ldalvik/system/BaseDexClassLoader;->getLdLibraryPath()Ljava/lang/String;

    move-result-object v11

    .line 170
    move-object v0, v6

    move-object v6, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Landroid/app/NativeActivity;->loadNativeCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/MessageQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/res/AssetManager;[BLjava/lang/ClassLoader;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    .line 176
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_d6

    .line 180
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    return-void

    .line 177
    :cond_d6
    new-instance v2, Ljava/lang/UnsatisfiedLinkError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load native library \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 178
    invoke-direct {p0}, Landroid/app/NativeActivity;->getDlError()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 163
    :cond_fd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find native library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using classloader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :catch_124
    move-exception v0

    .line 156
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error getting activity info"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist onDestroy()V
    .registers 7

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    .line 190
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 191
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v2, v3}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 192
    iput-object v1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 194
    :cond_f
    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_20

    .line 195
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    iget-object v0, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v0}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 196
    iput-object v1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 198
    :cond_20
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->unloadNativeCode(J)V

    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 200
    return-void
.end method

.method public whitelist onGlobalLayout()V
    .registers 9

    .line 302
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    iget-object v1, p0, Landroid/app/NativeActivity;->mLocation:[I

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity$NativeContentView;->getLocationInWindow([I)V

    .line 303
    iget-object v0, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0}, Landroid/app/NativeActivity$NativeContentView;->getWidth()I

    move-result v0

    .line 304
    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v1}, Landroid/app/NativeActivity$NativeContentView;->getHeight()I

    move-result v1

    .line 305
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentX:I

    const/4 v5, 0x1

    if-ne v2, v4, :cond_2d

    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v2, v2, v5

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentY:I

    if-ne v2, v4, :cond_2d

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    if-ne v0, v2, :cond_2d

    iget v2, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    if-eq v1, v2, :cond_4f

    .line 307
    :cond_2d
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v2, v2, v3

    iput v2, p0, Landroid/app/NativeActivity;->mLastContentX:I

    .line 308
    iget-object v2, p0, Landroid/app/NativeActivity;->mLocation:[I

    aget v2, v2, v5

    iput v2, p0, Landroid/app/NativeActivity;->mLastContentY:I

    .line 309
    iput v0, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    .line 310
    iput v1, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    .line 311
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_4f

    .line 312
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    iget v4, p0, Landroid/app/NativeActivity;->mLastContentX:I

    iget v5, p0, Landroid/app/NativeActivity;->mLastContentY:I

    iget v6, p0, Landroid/app/NativeActivity;->mLastContentWidth:I

    iget v7, p0, Landroid/app/NativeActivity;->mLastContentHeight:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onContentRectChangedNative(JIIII)V

    .line 316
    :cond_4f
    return-void
.end method

.method public whitelist onInputQueueCreated(Landroid/view/InputQueue;)V
    .registers 6

    .line 288
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_f

    .line 289
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 290
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueCreatedNative(JJ)V

    .line 292
    :cond_f
    return-void
.end method

.method public whitelist onInputQueueDestroyed(Landroid/view/InputQueue;)V
    .registers 6

    .line 295
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_10

    .line 296
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-virtual {p1}, Landroid/view/InputQueue;->getNativePtr()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/app/NativeActivity;->onInputQueueDestroyedNative(JJ)V

    .line 297
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/NativeActivity;->mCurInputQueue:Landroid/view/InputQueue;

    .line 299
    :cond_10
    return-void
.end method

.method public whitelist onLowMemory()V
    .registers 3

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 246
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_c

    .line 247
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onLowMemoryNative(J)V

    .line 249
    :cond_c
    return-void
.end method

.method protected whitelist onPause()V
    .registers 3

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 205
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onPauseNative(J)V

    .line 206
    return-void
.end method

.method protected whitelist onResume()V
    .registers 3

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 211
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onResumeNative(J)V

    .line 212
    return-void
.end method

.method protected whitelist onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 216
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSaveInstanceStateNative(J)[B

    move-result-object v0

    .line 218
    if-eqz v0, :cond_10

    .line 219
    const-string v1, "android:native_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 221
    :cond_10
    return-void
.end method

.method protected whitelist onStart()V
    .registers 3

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 226
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStartNative(J)V

    .line 227
    return-void
.end method

.method protected whitelist onStop()V
    .registers 3

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 232
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onStopNative(J)V

    .line 233
    return-void
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .registers 4

    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 254
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_c

    .line 255
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onWindowFocusChangedNative(JZ)V

    .line 257
    :cond_c
    return-void
.end method

.method greylist-max-r setWindowFlags(II)V
    .registers 4

    .line 320
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFlags(II)V

    .line 321
    return-void
.end method

.method greylist-max-r setWindowFormat(I)V
    .registers 3

    .line 325
    invoke-virtual {p0}, Landroid/app/NativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    .line 326
    return-void
.end method

.method greylist-max-r showIme(I)V
    .registers 4

    .line 330
    iget-object v0, p0, Landroid/app/NativeActivity;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/app/NativeActivity;->mNativeContentView:Landroid/app/NativeActivity$NativeContentView;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 331
    return-void
.end method

.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 13

    .line 267
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_13

    .line 268
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 269
    iget-wide v2, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    move-object v1, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Landroid/app/NativeActivity;->onSurfaceChangedNative(JLandroid/view/Surface;III)V

    .line 271
    :cond_13
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 260
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_f

    .line 261
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 262
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onSurfaceCreatedNative(JLandroid/view/Surface;)V

    .line 264
    :cond_f
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 281
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 282
    iget-boolean p1, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez p1, :cond_c

    .line 283
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Landroid/app/NativeActivity;->onSurfaceDestroyedNative(J)V

    .line 285
    :cond_c
    return-void
.end method

.method public whitelist surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 274
    iget-boolean v0, p0, Landroid/app/NativeActivity;->mDestroyed:Z

    if-nez v0, :cond_f

    .line 275
    iput-object p1, p0, Landroid/app/NativeActivity;->mCurSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 276
    iget-wide v0, p0, Landroid/app/NativeActivity;->mNativeHandle:J

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroid/app/NativeActivity;->onSurfaceRedrawNeededNative(JLandroid/view/Surface;)V

    .line 278
    :cond_f
    return-void
.end method
