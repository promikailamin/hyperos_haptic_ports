.class public interface abstract Lcom/android/server/devicepolicy/PermissionChecker$Delegate;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# virtual methods
.method public abstract getDpcType(Lcom/android/server/devicepolicy/CallerIdentity;)I
.end method

.method public abstract getUserDpcType(I)I
.end method

.method public abstract hasAdminPolicy(ILcom/android/server/devicepolicy/CallerIdentity;)Z
.end method

.method public abstract isCallerDelegate(Lcom/android/server/devicepolicy/CallerIdentity;Ljava/lang/String;)Z
.end method

.method public abstract isCallerDevicePolicyManagementRoleHolder(Lcom/android/server/devicepolicy/CallerIdentity;)Z
.end method
