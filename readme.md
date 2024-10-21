# Fast & Efficient Batch processing for cropping videos

1. Install Dependency: [ffmpeg](https://www.ffmpeg.org/)
   
3. Step up job csv file describes your jobs:
  CSV file format with following columns: ```input_file, start_time, end_time, output_file``` with the following format ```str, HH:MM:SS, HH:MM:SS, str```.

5. Run the following command in terminal:

```
.\cut_videos_batchprocess.bat YOUR_CSV_PATH
```


