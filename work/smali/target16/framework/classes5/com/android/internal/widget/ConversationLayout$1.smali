.class Lcom/android/internal/widget/ConversationLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ConversationLayout;->setIsImportantConversation(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ConversationLayout;

.field final synthetic blacklist val$baseSize:I

.field final synthetic blacklist val$bg:Landroid/graphics/drawable/GradientDrawable;

.field final synthetic blacklist val$bgSize:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ConversationLayout;Landroid/graphics/drawable/GradientDrawable;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 425
    iput-object p1, p0, Lcom/android/internal/widget/ConversationLayout$1;->this$0:Lcom/android/internal/widget/ConversationLayout;

    iput-object p2, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bg:Landroid/graphics/drawable/GradientDrawable;

    iput p3, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$baseSize:I

    iput p4, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bgSize:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 436
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bg:Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bgSize:I

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bgSize:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 437
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout$1;->this$0:Lcom/android/internal/widget/ConversationLayout;

    invoke-static {p1}, Lcom/android/internal/widget/ConversationLayout;->-$$Nest$fgetmConversationIconBadgeBg(Lcom/android/internal/widget/ConversationLayout;)Lcom/android/internal/widget/CachingIconView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->invalidate()V

    .line 438
    return-void
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    .line 429
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$bg:Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$baseSize:I

    iget v1, p0, Lcom/android/internal/widget/ConversationLayout$1;->val$baseSize:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 430
    iget-object p1, p0, Lcom/android/internal/widget/ConversationLayout$1;->this$0:Lcom/android/internal/widget/ConversationLayout;

    invoke-static {p1}, Lcom/android/internal/widget/ConversationLayout;->-$$Nest$fgetmConversationIconBadgeBg(Lcom/android/internal/widget/ConversationLayout;)Lcom/android/internal/widget/CachingIconView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/CachingIconView;->invalidate()V

    .line 431
    return-void
.end method
