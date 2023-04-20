#Make sure that Spectrum™ Technology Platform is stopped. To stop Spectrum™ Technology Platform, change the working directory to the bin directory of where Spectrum™ #Technology Platform is installed, then type the following command:  ./server.stop

java -jar DataMgt-DataUnPacking-20.1.jar /spectrumdata/datasets_spd cdq-AdvTransformer /apps/pb/spectrum/server/modules/cdqdb/library
java -jar DataMgt-DataUnPacking-20.1.jar /spectrumdata/datasets_spd cdq-OpenParser  /apps/pb/spectrum/server/modules/cdqdb/library
java -jar DataMgt-DataUnPacking-20.1.jar /spectrumdata/datasets_spd cdq-TableLookup  /apps/pb/spectrum/server/modules/cdqdb/library
