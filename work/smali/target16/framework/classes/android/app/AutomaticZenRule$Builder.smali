.class public final Landroid/app/AutomaticZenRule$Builder;
.super Ljava/lang/Object;
.source "AutomaticZenRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AutomaticZenRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowManualInvocation:Z

.field private blacklist mConditionId:Landroid/net/Uri;

.field private blacklist mConfigurationActivity:Landroid/content/ComponentName;

.field private blacklist mCreationTime:J

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

.field private blacklist mEnabled:Z

.field private blacklist mIconResId:I

.field private blacklist mInterruptionFilter:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mOwner:Landroid/content/ComponentName;

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mPolicy:Landroid/service/notification/ZenPolicy;

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>(Landroid/app/AutomaticZenRule;)V
    .registers 4

    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    .line 641
    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    .line 642
    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 643
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    .line 651
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    .line 652
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mOwner:Landroid/content/ComponentName;

    .line 653
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    .line 654
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    .line 655
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    .line 656
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    .line 657
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    .line 658
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 659
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    .line 660
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getTriggerDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDescription:Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getIconResId()I

    move-result v0

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mIconResId:I

    .line 662
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isManualInvocationAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mAllowManualInvocation:Z

    .line 663
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getCreationTime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AutomaticZenRule$Builder;->mCreationTime:J

    .line 664
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mPkg:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 638
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    .line 639
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    .line 640
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    .line 641
    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    .line 642
    iput-object v0, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 643
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    .line 668
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    .line 669
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    .line 670
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/AutomaticZenRule;
    .registers 9

    .line 820
    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/AutomaticZenRule$Builder;->mOwner:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    iget-object v5, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    iget v6, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    iget-boolean v7, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    invoke-direct/range {v0 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 822
    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmDeviceEffects(Landroid/app/AutomaticZenRule;Landroid/service/notification/ZenDeviceEffects;)V

    .line 823
    iget-wide v1, p0, Landroid/app/AutomaticZenRule$Builder;->mCreationTime:J

    invoke-static {v0, v1, v2}, Landroid/app/AutomaticZenRule;->-$$Nest$fputcreationTime(Landroid/app/AutomaticZenRule;J)V

    .line 824
    iget v1, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmType(Landroid/app/AutomaticZenRule;I)V

    .line 825
    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmTriggerDescription(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V

    .line 826
    iget v1, p0, Landroid/app/AutomaticZenRule$Builder;->mIconResId:I

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmIconResId(Landroid/app/AutomaticZenRule;I)V

    .line 827
    iget-boolean v1, p0, Landroid/app/AutomaticZenRule$Builder;->mAllowManualInvocation:Z

    invoke-static {v0, v1}, Landroid/app/AutomaticZenRule;->-$$Nest$fputmAllowManualInvocation(Landroid/app/AutomaticZenRule;Z)V

    .line 828
    iget-object v1, p0, Landroid/app/AutomaticZenRule$Builder;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setPackageName(Ljava/lang/String;)V

    .line 830
    return-object v0
.end method

.method public whitelist setConditionId(Landroid/net/Uri;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 700
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mConditionId:Landroid/net/Uri;

    .line 701
    return-object p0
.end method

.method public whitelist setConfigurationActivity(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 735
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mConfigurationActivity:Landroid/content/ComponentName;

    .line 736
    return-object p0
.end method

.method public blacklist setCreationTime(J)Landroid/app/AutomaticZenRule$Builder;
    .registers 3

    .line 806
    iput-wide p1, p0, Landroid/app/AutomaticZenRule$Builder;->mCreationTime:J

    .line 807
    return-object p0
.end method

.method public whitelist setDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 760
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mDeviceEffects:Landroid/service/notification/ZenDeviceEffects;

    .line 761
    return-object p0
.end method

.method public whitelist setEnabled(Z)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 717
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule$Builder;->mEnabled:Z

    .line 718
    return-object p0
.end method

.method public whitelist setIconResId(I)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 788
    iput p1, p0, Landroid/app/AutomaticZenRule$Builder;->mIconResId:I

    .line 789
    return-object p0
.end method

.method public whitelist setInterruptionFilter(I)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 709
    iput p1, p0, Landroid/app/AutomaticZenRule$Builder;->mInterruptionFilter:I

    .line 710
    return-object p0
.end method

.method public whitelist setManualInvocationAllowed(Z)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 797
    iput-boolean p1, p0, Landroid/app/AutomaticZenRule$Builder;->mAllowManualInvocation:Z

    .line 798
    return-object p0
.end method

.method public whitelist setName(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 676
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mName:Ljava/lang/String;

    .line 677
    return-object p0
.end method

.method public whitelist setOwner(Landroid/content/ComponentName;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 692
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mOwner:Landroid/content/ComponentName;

    .line 693
    return-object p0
.end method

.method public blacklist setPackage(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 815
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mPkg:Ljava/lang/String;

    .line 816
    return-object p0
.end method

.method public whitelist setTriggerDescription(Ljava/lang/String;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 780
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mDescription:Ljava/lang/String;

    .line 781
    return-object p0
.end method

.method public whitelist setType(I)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 768
    invoke-static {p1}, Landroid/app/AutomaticZenRule;->-$$Nest$smcheckValidType(I)I

    move-result p1

    iput p1, p0, Landroid/app/AutomaticZenRule$Builder;->mType:I

    .line 769
    return-object p0
.end method

.method public whitelist setZenPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/AutomaticZenRule$Builder;
    .registers 2

    .line 746
    iput-object p1, p0, Landroid/app/AutomaticZenRule$Builder;->mPolicy:Landroid/service/notification/ZenPolicy;

    .line 747
    return-object p0
.end method
