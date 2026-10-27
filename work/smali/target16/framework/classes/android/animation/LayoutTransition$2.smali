.class Landroid/animation/LayoutTransition$2;
.super Ljava/lang/Object;
.source "LayoutTransition.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/animation/LayoutTransition;

.field final synthetic blacklist val$anim:Landroid/animation/Animator;

.field final synthetic blacklist val$changeReason:I

.field final synthetic blacklist val$child:Landroid/view/View;

.field final synthetic blacklist val$duration:J

.field final synthetic blacklist val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 885
    iput-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    iput-object p2, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iput p3, p0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    iput-wide p4, p0, Landroid/animation/LayoutTransition$2;->val$duration:J

    iput-object p6, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    iput-object p7, p0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 890
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->setupEndValues()V

    .line 891
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    instance-of p1, p1, Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_60

    .line 892
    nop

    .line 893
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    check-cast p1, Landroid/animation/ValueAnimator;

    .line 894
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 895
    const/4 p2, 0x0

    move p3, p2

    :goto_16
    array-length p4, p1

    if-ge p2, p4, :cond_5d

    .line 896
    aget-object p4, p1, p2

    .line 897
    iget-object p5, p4, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    instance-of p5, p5, Landroid/animation/KeyframeSet;

    const/4 p6, 0x1

    if-eqz p5, :cond_42

    .line 898
    iget-object p4, p4, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast p4, Landroid/animation/KeyframeSet;

    .line 899
    iget-object p5, p4, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    if-eqz p5, :cond_40

    iget-object p5, p4, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    if-eqz p5, :cond_40

    iget-object p5, p4, Landroid/animation/KeyframeSet;->mFirstKeyframe:Landroid/animation/Keyframe;

    .line 901
    invoke-virtual {p5}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p5

    iget-object p4, p4, Landroid/animation/KeyframeSet;->mLastKeyframe:Landroid/animation/Keyframe;

    .line 902
    invoke-virtual {p4}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 901
    invoke-virtual {p5, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_59

    .line 903
    :cond_40
    move p3, p6

    goto :goto_59

    .line 905
    :cond_42
    iget-object p5, p4, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/4 p7, 0x0

    invoke-interface {p5, p7}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object p5

    iget-object p4, p4, Landroid/animation/PropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    const/high16 p7, 0x3f800000    # 1.0f

    invoke-interface {p4, p7}, Landroid/animation/Keyframes;->getValue(F)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_59

    .line 906
    move p3, p6

    goto :goto_5a

    .line 905
    :cond_59
    :goto_59
    nop

    .line 895
    :goto_5a
    add-int/lit8 p2, p2, 0x1

    goto :goto_16

    .line 909
    :cond_5d
    if-nez p3, :cond_60

    .line 910
    return-void

    .line 914
    :cond_60
    nop

    .line 915
    iget p1, p0, Landroid/animation/LayoutTransition$2;->val$changeReason:I

    packed-switch p1, :pswitch_data_168

    const-wide/16 p1, 0x0

    goto/16 :goto_108

    .line 932
    :pswitch_6a
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide p1

    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide p3

    add-long/2addr p1, p3

    .line 933
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide p4

    iget-object p6, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p6}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingStagger(Landroid/animation/LayoutTransition;)J

    move-result-wide p6

    add-long/2addr p4, p6

    invoke-static {p3, p4, p5}, Landroid/animation/LayoutTransition;->-$$Nest$fputstaggerDelay(Landroid/animation/LayoutTransition;J)V

    .line 934
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p3

    invoke-static {}, Landroid/animation/LayoutTransition;->-$$Nest$sfgetsChangingInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p4

    if-eq p3, p4, :cond_108

    .line 935
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-object p4, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p4}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_108

    .line 924
    :pswitch_9f
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDisappearingDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide p1

    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide p3

    add-long/2addr p1, p3

    .line 925
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide p4

    iget-object p6, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p6}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDisappearingStagger(Landroid/animation/LayoutTransition;)J

    move-result-wide p6

    add-long/2addr p4, p6

    invoke-static {p3, p4, p5}, Landroid/animation/LayoutTransition;->-$$Nest$fputstaggerDelay(Landroid/animation/LayoutTransition;J)V

    .line 926
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDisappearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p3

    invoke-static {}, Landroid/animation/LayoutTransition;->-$$Nest$sfgetsChangingDisappearingInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p4

    if-eq p3, p4, :cond_108

    .line 928
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-object p4, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p4}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingDisappearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_108

    .line 917
    :pswitch_d4
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingAppearingDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide p1

    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide p3

    add-long/2addr p1, p3

    .line 918
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetstaggerDelay(Landroid/animation/LayoutTransition;)J

    move-result-wide p4

    iget-object p6, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p6}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingAppearingStagger(Landroid/animation/LayoutTransition;)J

    move-result-wide p6

    add-long/2addr p4, p6

    invoke-static {p3, p4, p5}, Landroid/animation/LayoutTransition;->-$$Nest$fputstaggerDelay(Landroid/animation/LayoutTransition;J)V

    .line 919
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p3}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingAppearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p3

    invoke-static {}, Landroid/animation/LayoutTransition;->-$$Nest$sfgetsChangingAppearingInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p4

    if-eq p3, p4, :cond_108

    .line 920
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-object p4, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p4}, Landroid/animation/LayoutTransition;->-$$Nest$fgetmChangingAppearingInterpolator(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 939
    :cond_108
    :goto_108
    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {p3, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 940
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    iget-wide p2, p0, Landroid/animation/LayoutTransition$2;->val$duration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 942
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->-$$Nest$fgetcurrentChangingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    .line 943
    if-eqz p1, :cond_127

    .line 944
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 946
    :cond_127
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->-$$Nest$fgetpendingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator;

    .line 947
    if-eqz p1, :cond_142

    .line 948
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->-$$Nest$fgetpendingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    :cond_142
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->-$$Nest$fgetcurrentChangingAnimations(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    iget-object p3, p0, Landroid/animation/LayoutTransition$2;->val$anim:Landroid/animation/Animator;

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$parent:Landroid/view/ViewGroup;

    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 957
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 958
    iget-object p1, p0, Landroid/animation/LayoutTransition$2;->this$0:Landroid/animation/LayoutTransition;

    invoke-static {p1}, Landroid/animation/LayoutTransition;->-$$Nest$fgetlayoutChangeListenerMap(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p2, p0, Landroid/animation/LayoutTransition$2;->val$child:Landroid/view/View;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    return-void

    nop

    :pswitch_data_168
    .packed-switch 0x2
        :pswitch_d4
        :pswitch_9f
        :pswitch_6a
    .end packed-switch
.end method
