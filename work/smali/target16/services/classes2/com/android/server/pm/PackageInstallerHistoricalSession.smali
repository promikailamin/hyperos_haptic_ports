.class public final Lcom/android/server/pm/PackageInstallerHistoricalSession;
.super Ljava/lang/Object;
.source "PackageInstallerHistoricalSession.java"


# instance fields
.field public final mBridges:I

.field public final mChildSessionIds:[I

.field public final mClientProgress:F

.field public final mCommitted:Z

.field public final mCommittedMillis:J

.field public final mCreatedMillis:J

.field public final mCurrentVerificationPolicy:I

.field public final mDestroyed:Z

.field public final mFds:I

.field public final mFinalMessage:Ljava/lang/String;

.field public final mFinalStatus:I

.field public final mInitialVerificationPolicy:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mInstallerUid:I

.field public final mOriginalInstallerPackageName:Ljava/lang/String;

.field public final mOriginalInstallerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public final mParams:Ljava/lang/String;

.field public final mParentSessionId:I

.field public final mPermissionsManuallyAccepted:Z

.field public final mPreVerifiedDomains:Ljava/lang/String;

.field public final mPreapprovalDetails:Ljava/lang/String;

.field public final mPreapprovalRequested:Z

.field public final mProgress:F

.field public final mSealed:Z

.field public final mSessionApplied:Z

.field public final mSessionErrorCode:I

.field public final mSessionErrorMessage:Ljava/lang/String;

.field public final mSessionFailed:Z

.field public final mSessionReady:Z

.field public final mStageCid:Ljava/lang/String;

.field public final mStageDir:Ljava/io/File;

.field public final mStageDirInUse:Z

.field public final mUpdatedMillis:J

.field public final sessionId:I

.field public final userId:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Lcom/android/server/pm/InstallSource;IJJJLjava/io/File;Ljava/lang/String;FFZZZZZZIIILjava/lang/String;Landroid/content/pm/PackageInstaller$SessionParams;I[IZZZILjava/lang/String;Landroid/content/pm/PackageInstaller$PreapprovalDetails;Landroid/content/pm/verify/domain/DomainSet;Ljava/lang/String;II)V
    .registers 41

    move-object/from16 v0, p27

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->sessionId:I

    .line 98
    iput p2, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->userId:I

    .line 99
    iput p3, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mOriginalInstallerUid:I

    .line 100
    iput-object p4, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 102
    iput p6, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallerUid:I

    .line 103
    iput-wide p7, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCreatedMillis:J

    .line 104
    iput-wide p9, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mUpdatedMillis:J

    .line 105
    iput-wide p11, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommittedMillis:J

    .line 106
    iput-object p13, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageDir:Ljava/io/File;

    .line 107
    iput-object p14, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageCid:Ljava/lang/String;

    move/from16 p1, p15

    .line 108
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mClientProgress:F

    move/from16 p1, p16

    .line 109
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mProgress:F

    move/from16 p1, p17

    .line 110
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommitted:Z

    move/from16 p1, p18

    .line 111
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalRequested:Z

    move/from16 p1, p19

    .line 112
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSealed:Z

    move/from16 p1, p20

    .line 113
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPermissionsManuallyAccepted:Z

    move/from16 p1, p21

    .line 114
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageDirInUse:Z

    move/from16 p1, p22

    .line 115
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mDestroyed:Z

    move/from16 p1, p23

    .line 116
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFds:I

    move/from16 p1, p24

    .line 117
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mBridges:I

    move/from16 p1, p25

    .line 118
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFinalStatus:I

    move-object/from16 p1, p26

    .line 119
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFinalMessage:Ljava/lang/String;

    .line 121
    new-instance p1, Ljava/io/CharArrayWriter;

    invoke-direct {p1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 122
    new-instance p2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "    "

    invoke-direct {p2, p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParams:Ljava/lang/String;

    move/from16 p1, p28

    .line 126
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParentSessionId:I

    move-object/from16 p1, p29

    .line 127
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mChildSessionIds:[I

    move/from16 p1, p30

    .line 128
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionApplied:Z

    move/from16 p1, p31

    .line 129
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionFailed:Z

    move/from16 p1, p32

    .line 130
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionReady:Z

    move/from16 p1, p33

    .line 131
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorCode:I

    move-object/from16 p1, p34

    .line 132
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorMessage:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p35, :cond_86

    .line 134
    invoke-virtual/range {p35 .. p35}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalDetails:Ljava/lang/String;

    goto :goto_88

    .line 136
    :cond_86
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalDetails:Ljava/lang/String;

    :goto_88
    if-eqz p36, :cond_97

    .line 139
    const-string p1, ","

    invoke-virtual/range {p36 .. p36}, Landroid/content/pm/verify/domain/DomainSet;->getDomains()Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreVerifiedDomains:Ljava/lang/String;

    goto :goto_99

    .line 141
    :cond_97
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreVerifiedDomains:Ljava/lang/String;

    :goto_99
    if-eqz p35, :cond_a0

    .line 144
    invoke-virtual/range {p35 .. p35}, Landroid/content/pm/PackageInstaller$PreapprovalDetails;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_a7

    :cond_a0
    if-eqz p37, :cond_a5

    move-object/from16 p1, p37

    goto :goto_a7

    .line 145
    :cond_a5
    iget-object p1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    :goto_a7
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPackageName:Ljava/lang/String;

    move/from16 p1, p38

    .line 146
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInitialVerificationPolicy:I

    move/from16 p1, p39

    .line 147
    iput p1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCurrentVerificationPolicy:I

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 154
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 155
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mOriginalInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mOriginalInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 156
    const-string v0, "mOriginalInstallerPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    const-string v1, "installerPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 158
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    const-string v1, "installInitiatingPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 159
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    const-string v1, "installOriginatingPackageName"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 160
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallerUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mInstallerUid"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 161
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCreatedMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "createdMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 162
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mUpdatedMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string/jumbo v1, "updatedMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 163
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommittedMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "committedMillis"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 164
    const-string/jumbo v0, "stageDir"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageDir:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 165
    const-string/jumbo v0, "stageCid"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageCid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 166
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 168
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParams:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mClientProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "mClientProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 171
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mProgress:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "mProgress"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 172
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommitted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mCommitted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 173
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalRequested:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mPreapprovalRequested"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 174
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSealed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mSealed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 175
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mPermissionsManuallyAccepted"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 176
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mStageDirInUse:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mStageDirInUse"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 177
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mDestroyed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mDestroyed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 178
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFds:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mFds"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 179
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mBridges:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mBridges"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 180
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFinalStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mFinalStatus"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 181
    const-string v0, "mFinalMessage"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mFinalMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 182
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParentSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mParentSessionId"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 183
    const-string v0, "mChildSessionIds"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mChildSessionIds:[I

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 184
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionApplied:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mSessionApplied"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 185
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionFailed:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mSessionFailed"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 186
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionReady:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "mSessionReady"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 187
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mSessionErrorCode"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 188
    const-string v0, "mSessionErrorMessage"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 189
    const-string v0, "mPreapprovalDetails"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalDetails:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 190
    const-string v0, "mPreVerifiedDomains"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreVerifiedDomains:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 191
    const-string v0, "mAppPackageName"

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 192
    iget v0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInitialVerificationPolicy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mInitialVerificationPolicy"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 193
    iget p0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCurrentVerificationPolicy:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "mCurrentVerificationPolicy"

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 194
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 196
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public generateInfo()Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 4

    .line 203
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 204
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->sessionId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 205
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->userId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 206
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v2, v1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 207
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    .line 208
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mProgress:F

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 209
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSealed:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 210
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCommitted:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 211
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPreapprovalRequested:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isPreapprovalRequested:Z

    .line 213
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mParentSessionId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 214
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mChildSessionIds:[I

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 215
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionApplied:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    .line 216
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionReady:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    .line 217
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionFailed:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    .line 218
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorCode:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->setSessionErrorCode(ILjava/lang/String;)V

    .line 219
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mCreatedMillis:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    .line 220
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mUpdatedMillis:J

    iput-wide v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 221
    iget v1, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mInstallerUid:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    .line 222
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerHistoricalSession;->mPackageName:Ljava/lang/String;

    iput-object p0, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    return-object v0
.end method
