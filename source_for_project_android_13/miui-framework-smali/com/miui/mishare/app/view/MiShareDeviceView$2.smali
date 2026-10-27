.class Lcom/miui/mishare/app/view/MiShareDeviceView$2;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "MiShareDeviceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceWaiting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/MiShareDeviceView;

.field final synthetic blacklist val$waitingDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/mishare/app/view/MiShareDeviceView;

    .line 386
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$2;->this$0:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$2;->val$waitingDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 389
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$2;->val$waitingDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 390
    return-void
.end method
