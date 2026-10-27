.class public interface abstract Landroid/app/appfunctions/AppFunctionAccessServiceInterface;
.super Ljava/lang/Object;
.source "AppFunctionAccessServiceInterface.java"


# virtual methods
.method public abstract blacklist getAccessFlags(Ljava/lang/String;ILjava/lang/String;I)I
.end method

.method public abstract blacklist getAccessRequestState(Ljava/lang/String;ILjava/lang/String;I)I
.end method

.method public abstract blacklist getValidAgents(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getValidTargets(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist onUserStarting(I)V
.end method

.method public abstract blacklist revokeSelfAccess(Ljava/lang/String;)V
.end method

.method public abstract blacklist setAgentAllowlist(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/pm/SignedPackage;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist updateAccessFlags(Ljava/lang/String;ILjava/lang/String;III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
