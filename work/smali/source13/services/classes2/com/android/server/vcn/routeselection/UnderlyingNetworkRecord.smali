.class public Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
.super Ljava/lang/Object;
.source "UnderlyingNetworkRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
    }
.end annotation


# static fields
.field private static final PRIORITY_CLASS_INVALID:I = 0x7fffffff


# instance fields
.field public final isBlocked:Z

.field public final linkProperties:Landroid/net/LinkProperties;

.field private mPriorityClass:I

.field public final network:Landroid/net/Network;

.field public final networkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V
    .registers 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p3, "linkProperties"    # Landroid/net/LinkProperties;
    .param p4, "isBlocked"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    .line 60
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    .line 61
    iput-object p2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 62
    iput-object p3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 63
    iput-boolean p4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    .line 64
    return-void
.end method

.method static getComparator(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)Ljava/util/Comparator;
    .registers 14
    .param p0, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "currentlySelected"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p5, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ")",
            "Ljava/util/Comparator<",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            ">;"
        }
    .end annotation

    .line 118
    .local p1, "underlyingNetworkTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    new-instance v7, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V

    return-object v7
.end method

.method private getOrCalculatePriorityClass(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I
    .registers 14
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p3, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "currentlySelected"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p6, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ")I"
        }
    .end annotation

    .line 74
    .local p2, "underlyingNetworkTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    iget v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_15

    .line 75
    nop

    .line 76
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/NetworkPriorityClassifier;->calculatePriorityClass(Lcom/android/server/vcn/VcnContext;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v0

    iput v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    .line 86
    :cond_15
    iget v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    return v0
.end method

.method private static isSelected(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)Z
    .registers 5
    .param p0, "recordToCheck"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p1, "currentlySelected"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 154
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 155
    return v0

    .line 157
    :cond_4
    iget-object v1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    if-ne v1, v2, :cond_c

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_c
    return v0
.end method

.method static synthetic lambda$getComparator$0(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)I
    .registers 16
    .param p0, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p1, "underlyingNetworkTemplates"    # Ljava/util/List;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p4, "currentlySelected"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p5, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
    .param p6, "left"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p7, "right"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 119
    nop

    .line 120
    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->getOrCalculatePriorityClass(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v0

    .line 127
    .local v0, "leftIndex":I
    nop

    .line 128
    move-object v1, p7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->getOrCalculatePriorityClass(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v1

    .line 138
    .local v1, "rightIndex":I
    if-ne v0, v1, :cond_2a

    .line 141
    invoke-static {p6, p4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isSelected(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 142
    const/4 v2, -0x1

    return v2

    .line 144
    :cond_22
    invoke-static {p6, p4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isSelected(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 145
    const/4 v2, 0x1

    return v2

    .line 148
    :cond_2a
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method


# virtual methods
.method dump(Lcom/android/server/vcn/VcnContext;Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)V
    .registers 15
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p4, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p5, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p6, "currentlySelected"    # Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .param p7, "carrierConfig"    # Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;",
            "Landroid/os/ParcelUuid;",
            "Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;",
            "Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;",
            "Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;",
            ")V"
        }
    .end annotation

    .line 172
    .local p3, "underlyingNetworkTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    const-string v0, "UnderlyingNetworkRecord:"

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 175
    nop

    .line 176
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->getOrCalculatePriorityClass(Lcom/android/server/vcn/VcnContext;Ljava/util/List;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Lcom/android/server/vcn/util/PersistableBundleUtils$PersistableBundleWrapper;)I

    move-result v0

    .line 184
    .local v0, "priorityIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLinkProperties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 190
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 98
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 100
    .local v1, "that":Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    iget-object v4, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-virtual {v3, v4}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v4, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 101
    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    iget-object v4, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 102
    invoke-virtual {v3, v4}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-boolean v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    iget-boolean v4, v1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    if-ne v3, v4, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    .line 100
    :goto_33
    return v0
.end method

.method getPriorityClass()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->mPriorityClass:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->isBlocked:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
