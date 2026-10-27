.class Landroid/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final greylist-max-o mFlags:I

.field final greylist-max-o mId:I

.field final greylist-max-o mName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/app/FragmentManagerImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3644
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3645
    iput-object p2, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    .line 3646
    iput p3, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    .line 3647
    iput p4, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    .line 3648
    return-void
.end method


# virtual methods
.method public greylist-max-o generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3653
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v0, :cond_1e

    iget v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    if-gez v0, :cond_1e

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 3656
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 3657
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3660
    const/4 p1, 0x0

    return p1

    .line 3663
    :cond_1e
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v3, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    iget v4, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    iget v5, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
