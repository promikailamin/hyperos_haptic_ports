.class public final Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
.super Ljava/lang/Object;
.source "EconomyManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/EconomyManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBill"
.end annotation


# static fields
.field private static final sAnticipatedActionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnticipatedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mHashCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->sAnticipatedActionComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "anticipatedActions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 88
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;>;"
    sget-object v1, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->sAnticipatedActionComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 93
    mul-int/lit8 v3, v1, 0x1f

    iget-object v4, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-virtual {v4}, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 95
    .end local v2    # "i":I
    :cond_30
    iput v1, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mHashCode:I

    .line 96
    return-void
.end method

.method static synthetic lambda$static$0(Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;)I
    .registers 2
    .param p0, "aa"    # Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    .line 81
    iget v0, p0, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;->actionId:I

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 104
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 105
    :cond_4
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1d

    .line 106
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 107
    .local v0, "that":Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    iget-object v1, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 105
    .end local v0    # "that":Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    return v0
.end method

.method getAnticipatedActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mAnticipatedActions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->mHashCode:I

    return v0
.end method
