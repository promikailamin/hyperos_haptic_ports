.class Landroid/gesture/GestureLibraries$ResourceGestureLibrary;
.super Landroid/gesture/GestureLibrary;
.source "GestureLibraries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gesture/GestureLibraries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResourceGestureLibrary"
.end annotation


# instance fields
.field private final greylist-max-o mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mResourceId:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;I)V
    .registers 4

    .line 148
    invoke-direct {p0}, Landroid/gesture/GestureLibrary;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mContext:Ljava/lang/ref/WeakReference;

    .line 150
    iput p2, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    .line 151
    return-void
.end method


# virtual methods
.method public whitelist isReadOnly()Z
    .registers 2

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist load()Z
    .registers 5

    .line 163
    nop

    .line 164
    iget-object v0, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 165
    if-eqz v0, :cond_40

    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 168
    :try_start_15
    iget-object v2, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mStore:Landroid/gesture/GestureStore;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;Z)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1b} :catch_1d

    .line 169
    nop

    .line 173
    goto :goto_41

    .line 170
    :catch_1d
    move-exception v1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load the gesture library from raw resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p0, Landroid/gesture/GestureLibraries$ResourceGestureLibrary;->mResourceId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v2, "Gestures"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_40
    const/4 v3, 0x0

    :goto_41
    return v3
.end method

.method public whitelist save()Z
    .registers 2

    .line 159
    const/4 v0, 0x0

    return v0
.end method
