.class public final Lcom/android/server/inputmethod/UserDataRepository;
.super Ljava/lang/Object;
.source "UserDataRepository.java"


# instance fields
.field public final mBindingControllerFactory:Ljava/util/function/IntFunction;

.field public final mMutationLock:Ljava/lang/Object;

.field public volatile mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

.field public final mVisibilityStateComputerFactory:Ljava/util/function/IntFunction;


# direct methods
.method public constructor <init>(Ljava/util/function/IntFunction;Ljava/util/function/IntFunction;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 63
    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    .line 64
    iput-object p2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mVisibilityStateComputerFactory:Ljava/util/function/IntFunction;

    return-void
.end method


# virtual methods
.method public forAllUserData(Ljava/util/function/Consumer;)V
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getOrCreate(I)Lcom/android/server/inputmethod/UserData;
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/UserData;

    if-eqz v0, :cond_b

    return-object v0

    .line 48
    :cond_b
    new-instance v0, Lcom/android/server/inputmethod/UserData;

    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mBindingControllerFactory:Ljava/util/function/IntFunction;

    invoke-interface {v1, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/inputmethod/InputMethodBindingController;

    iget-object v2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mVisibilityStateComputerFactory:Ljava/util/function/IntFunction;

    .line 49
    invoke-interface {v2, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/inputmethod/UserData;-><init>(ILcom/android/server/inputmethod/InputMethodBindingController;Lcom/android/server/inputmethod/ImeVisibilityStateComputer;)V

    .line 50
    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_23
    iget-object v2, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v2, p1, v0}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 52
    monitor-exit v1

    return-object v0

    :catchall_2d
    move-exception p0

    .line 53
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public remove(I)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/android/server/inputmethod/UserDataRepository;->mMutationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    iget-object v1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Lcom/android/server/inputmethod/ImmutableSparseArray;

    .line 71
    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method
