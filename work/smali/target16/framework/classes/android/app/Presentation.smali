.class public Landroid/app/Presentation;
.super Landroid/app/Dialog;
.source "Presentation.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Presentation"


# instance fields
.field private final greylist-max-o mDisplay:Landroid/view/Display;

.field private final greylist-max-o mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final greylist-max-o mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/app/Presentation;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayChanged(Landroid/app/Presentation;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDisplayRemoved(Landroid/app/Presentation;)V
    .registers 1

    invoke-direct {p0}, Landroid/app/Presentation;->handleDisplayRemoved()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;)V
    .registers 4

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 174
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .registers 5

    .line 196
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;II)V

    .line 197
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;II)V
    .registers 7

    .line 222
    invoke-static {p1, p2, p3, p4}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 160
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p3

    const-string v1, "Presentation must be constructed on a looper thread."

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/Looper;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    .line 346
    new-instance p1, Landroid/app/Presentation$1;

    invoke-direct {p1, p0}, Landroid/app/Presentation$1;-><init>(Landroid/app/Presentation;)V

    iput-object p1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 224
    iput-object p2, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    .line 225
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 227
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p3

    .line 229
    invoke-virtual {p1, p3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 230
    const/16 p3, 0x77

    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    .line 231
    invoke-static {p4, p2}, Landroid/app/Presentation;->getWindowType(ILandroid/view/Display;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 232
    invoke-virtual {p0, v0}, Landroid/app/Presentation;->setCanceledOnTouchOutside(Z)V

    .line 233
    return-void
.end method

.method private static greylist-max-r createPresentationContext(Landroid/content/Context;Landroid/view/Display;I)Landroid/content/Context;
    .registers 4

    .line 323
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/app/Presentation;->createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createPresentationContext(Landroid/content/Context;Landroid/view/Display;II)Landroid/content/Context;
    .registers 5

    .line 328
    if-eqz p0, :cond_33

    .line 331
    if-eqz p1, :cond_2b

    .line 335
    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    .line 336
    invoke-static {p3, p1}, Landroid/app/Presentation;->getWindowType(ILandroid/view/Display;)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p0

    .line 337
    if-nez p2, :cond_25

    .line 338
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const p3, 0x10103c0

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 341
    iget p2, p1, Landroid/util/TypedValue;->resourceId:I

    .line 343
    :cond_25
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-direct {p1, p0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object p1

    .line 332
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "display must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "outerContext must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getWindowType(ILandroid/view/Display;)I
    .registers 3

    .line 236
    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    .line 237
    return p0

    .line 239
    :cond_4
    invoke-virtual {p1}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_f

    const/16 p0, 0x7ee

    goto :goto_11

    .line 240
    :cond_f
    const/16 p0, 0x7f5

    .line 239
    :goto_11
    return p0
.end method

.method private greylist-max-o handleDisplayChanged()V
    .registers 1

    .line 317
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayChanged()V

    .line 318
    return-void
.end method

.method private greylist-max-o handleDisplayRemoved()V
    .registers 1

    .line 312
    invoke-virtual {p0}, Landroid/app/Presentation;->onDisplayRemoved()V

    .line 313
    invoke-virtual {p0}, Landroid/app/Presentation;->cancel()V

    .line 314
    return-void
.end method


# virtual methods
.method public whitelist getDisplay()Landroid/view/Display;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/app/Presentation;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 260
    invoke-virtual {p0}, Landroid/app/Presentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onDisplayChanged()V
    .registers 1

    .line 309
    return-void
.end method

.method public whitelist onDisplayRemoved()V
    .registers 1

    .line 300
    return-void
.end method

.method protected whitelist onStart()V
    .registers 4

    .line 265
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 266
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Landroid/app/Presentation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 267
    return-void
.end method

.method protected whitelist onStop()V
    .registers 3

    .line 271
    iget-object v0, p0, Landroid/app/Presentation;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/app/Presentation;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 272
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 273
    return-void
.end method

.method public whitelist show()V
    .registers 3

    .line 282
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 284
    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_1c

    sget-object v1, Landroid/window/DesktopExperienceFlags;->ENABLE_PRESENTATION_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 286
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 288
    :cond_1c
    return-void
.end method
