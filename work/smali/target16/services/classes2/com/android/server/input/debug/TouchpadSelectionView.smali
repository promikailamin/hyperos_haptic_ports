.class public Lcom/android/server/input/debug/TouchpadSelectionView;
.super Landroid/widget/LinearLayout;
.source "TouchpadSelectionView.java"


# instance fields
.field public mCurrentTouchpadId:I


# direct methods
.method public static synthetic $r8$lambda$Cgj4SGPa5QUH5PwFh27-vhrjlfM(Lcom/android/server/input/debug/TouchpadSelectionView;Landroid/content/Context;Ljava/util/function/Consumer;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/input/debug/TouchpadSelectionView;->lambda$init$0(Landroid/content/Context;Ljava/util/function/Consumer;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fte8vHin7tFS_3M8Z0-6JIkWlsk(Lcom/android/server/input/debug/TouchpadSelectionView;Ljava/util/function/Consumer;Landroid/view/MenuItem;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/debug/TouchpadSelectionView;->lambda$showPopupMenu$1(Ljava/util/function/Consumer;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/function/Consumer;)V
    .registers 4

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput p2, p0, Lcom/android/server/input/debug/TouchpadSelectionView;->mCurrentTouchpadId:I

    .line 43
    invoke-virtual {p0, p1, p3}, Lcom/android/server/input/debug/TouchpadSelectionView;->init(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public final getTouchpadName(I)Ljava/lang/String;
    .registers 3

    .line 107
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    .line 107
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/hardware/input/InputManager;

    .line 109
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    .line 107
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/view/InputDevice;

    .line 109
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 8

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 53
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 54
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    iget v3, p0, Lcom/android/server/input/debug/TouchpadSelectionView;->mCurrentTouchpadId:I

    invoke-virtual {p0, v3}, Lcom/android/server/input/debug/TouchpadSelectionView;->getTouchpadName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x3

    .line 56
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, -0x1

    .line 57
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    .line 61
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 62
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    new-instance v3, Landroid/widget/ImageButton;

    invoke-direct {v3, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const v4, 0x1080002

    .line 65
    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x5

    .line 66
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setForegroundGravity(I)V

    .line 67
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/TouchpadSelectionView;Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final synthetic lambda$init$0(Landroid/content/Context;Ljava/util/function/Consumer;Landroid/view/View;)V
    .registers 4

    .line 72
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/input/debug/TouchpadSelectionView;->showPopupMenu(Landroid/view/View;Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic lambda$showPopupMenu$1(Ljava/util/function/Consumer;Landroid/view/MenuItem;)Z
    .registers 4

    .line 95
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget p0, p0, Lcom/android/server/input/debug/TouchpadSelectionView;->mCurrentTouchpadId:I

    if-ne v0, p0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 99
    :cond_a
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final showPopupMenu(Landroid/view/View;Landroid/content/Context;Ljava/util/function/Consumer;)V
    .registers 12

    .line 81
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-direct {v0, p2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 83
    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/input/InputManager;

    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/hardware/input/InputManager;

    .line 85
    invoke-virtual {p1}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1d
    if-ge v3, v1, :cond_44

    aget v5, p2, v3

    .line 86
    invoke-virtual {p1, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v6

    .line 87
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroid/view/InputDevice;

    const v7, 0x10200a

    invoke-virtual {v6, v7}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 89
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v6

    invoke-virtual {p0, v5}, Lcom/android/server/input/debug/TouchpadSelectionView;->getTouchpadName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v5, v4, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v4, v4, 0x1

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 94
    :cond_44
    new-instance p1, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lcom/android/server/input/debug/TouchpadSelectionView$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/debug/TouchpadSelectionView;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 103
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
