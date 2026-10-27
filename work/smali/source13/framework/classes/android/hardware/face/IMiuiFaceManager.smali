.class public interface abstract Landroid/hardware/face/IMiuiFaceManager;
.super Ljava/lang/Object;
.source "IMiuiFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/face/IMiuiFaceManager$MiuiFaceContants;
    }
.end annotation


# virtual methods
.method public abstract blacklist addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V
.end method

.method public abstract blacklist authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;IZ)V
.end method

.method public abstract blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V
.end method

.method public abstract blacklist enroll(I[BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[ILandroid/view/Surface;Z)V
.end method

.method public abstract blacklist enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/face/FaceManager$EnrollmentCallback;Landroid/view/Surface;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
.end method

.method public abstract blacklist extCmd(II)I
.end method

.method public abstract blacklist generateChallenge(IILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
.end method

.method public abstract blacklist generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V
.end method

.method public abstract blacklist getEnrolledFaces()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getEnrolledFaces(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getFaceManager(Landroid/content/Context;Landroid/hardware/face/IFaceService;)Landroid/hardware/face/FaceManager;
.end method

.method public abstract blacklist getFaceManger()Landroid/hardware/face/FaceManager;
.end method

.method public abstract blacklist getFeature(IILandroid/hardware/face/FaceManager$GetFeatureCallback;)V
.end method

.method public abstract blacklist hasEnrolledTemplates()Z
.end method

.method public abstract blacklist hasEnrolledTemplates(I)Z
.end method

.method public abstract blacklist isHardwareDetected()Z
.end method

.method public abstract blacklist remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V
.end method

.method public abstract blacklist revokeChallenge(IIJ)V
.end method

.method public abstract blacklist setFeature(IIZ[BLandroid/hardware/face/FaceManager$SetFeatureCallback;)V
.end method
