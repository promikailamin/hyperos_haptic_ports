.class public final Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DesiredDisplayModeSpecs"
.end annotation


# instance fields
.field public allowGroupSwitching:Z

.field public final appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

.field public baseModeId:I

.field public final primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 913
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 914
    return-void
.end method

.method public constructor <init>(IZLandroid/hardware/display/DisplayManagerInternal$RefreshRateRange;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V
    .registers 5
    .param p1, "baseModeId"    # I
    .param p2, "allowGroupSwitching"    # Z
    .param p3, "primaryRefreshRateRange"    # Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    .param p4, "appRequestRefreshRateRange"    # Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 921
    iput-boolean p2, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 922
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 923
    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 924
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 979
    iget v0, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 980
    iget-boolean v0, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 981
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    .line 982
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    .line 983
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    .line 984
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    .line 985
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 943
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 944
    return v0

    .line 947
    :cond_4
    instance-of v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 948
    return v2

    .line 951
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 953
    .local v1, "desiredDisplayModeSpecs":Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    iget v4, v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v3, v4, :cond_14

    .line 954
    return v2

    .line 956
    :cond_14
    iget-boolean v3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iget-boolean v4, v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    if-eq v3, v4, :cond_1b

    .line 957
    return v2

    .line 959
    :cond_1b
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object v4, v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 960
    return v2

    .line 962
    :cond_26
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object v4, v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 964
    return v2

    .line 966
    :cond_31
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 971
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 931
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 934
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    .line 935
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    .line 936
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 931
    const-string v1, "baseModeId=%d allowGroupSwitching=%b primaryRefreshRateRange=[%.0f %.0f] appRequestRefreshRateRange=[%.0f %.0f]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
