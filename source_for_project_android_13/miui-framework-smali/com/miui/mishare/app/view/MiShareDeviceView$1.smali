.class Lcom/miui/mishare/app/view/MiShareDeviceView$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "MiShareDeviceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/mishare/app/view/MiShareDeviceView;->setDeviceSending()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/mishare/app/view/MiShareDeviceView;

.field final synthetic blacklist val$sendingDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/view/MiShareDeviceView;Landroid/graphics/drawable/AnimatedVectorDrawable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/mishare/app/view/MiShareDeviceView;

    .line 372
    iput-object p1, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$1;->this$0:Lcom/miui/mishare/app/view/MiShareDeviceView;

    iput-object p2, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$1;->val$sendingDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 375
    iget-object v0, p0, Lcom/miui/mishare/app/view/MiShareDeviceView$1;->val$sendingDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 376
    return-void
.end method
