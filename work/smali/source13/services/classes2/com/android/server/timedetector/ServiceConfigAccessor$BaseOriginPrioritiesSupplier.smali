.class abstract Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/ServiceConfigAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseOriginPrioritiesSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "[I>;"
    }
.end annotation


# instance fields
.field private mLastPriorityInts:[I

.field private mLastPriorityStrings:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 153
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->get()[I

    move-result-object v0

    return-object v0
.end method

.method public get()[I
    .registers 6

    .line 161
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->lookupPriorityStrings()[Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "priorityStrings":[Ljava/lang/String;
    monitor-enter p0

    .line 163
    :try_start_5
    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 164
    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityInts:[I

    monitor-exit p0

    return-object v1

    .line 167
    :cond_11
    const/4 v1, 0x0

    .line 168
    .local v1, "priorityInts":[I
    if-eqz v0, :cond_3a

    array-length v2, v0

    if-lez v2, :cond_3a

    .line 169
    array-length v2, v0

    new-array v2, v2, [I
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_40

    move-object v1, v2

    .line 171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    :try_start_1c
    array-length v3, v1

    if-ge v2, v3, :cond_37

    .line 172
    aget-object v3, v0, v2

    .line 173
    .local v3, "priorityString":Ljava/lang/String;
    if-eqz v3, :cond_25

    const/4 v4, 0x1

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 175
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 176
    invoke-static {v3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->stringToOrigin(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_34} :catch_38
    .catchall {:try_start_1c .. :try_end_34} :catchall_40

    .line 171
    .end local v3    # "priorityString":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 182
    .end local v2    # "i":I
    :cond_37
    goto :goto_3a

    .line 178
    :catch_38
    move-exception v2

    .line 181
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    .line 184
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3a
    :goto_3a
    :try_start_3a
    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    .line 185
    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityInts:[I

    .line 186
    monitor-exit p0

    return-object v1

    .line 187
    .end local v1    # "priorityInts":[I
    :catchall_40
    move-exception v1

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_40

    throw v1
.end method

.method protected abstract lookupPriorityStrings()[Ljava/lang/String;
.end method
